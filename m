Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CD10D42C234
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:08:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevv-0000es-Mn; Wed, 13 Oct 2021 14:08:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maWim-00066T-5x; Wed, 13 Oct 2021 05:22:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2DQz2WV/6nrwiR72242gRkqq8vUi4whhUhfjcP1bIOA=; b=CUHx4NVpCRIZaZp93A6rh/dfZe
 VYff/cP7FuekbWMCdNhMusqsfCu47FcvNRx0DUPJu70QKP1vJLF3jlRqBkZezct6wEwzXoilUuDA5
 +WXJPl9NMlZUK2q1D+zh1f2tiEMpXyLr0m6q89VPMrd3zsri019fKvG8BsJnnNmNF6N0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2DQz2WV/6nrwiR72242gRkqq8vUi4whhUhfjcP1bIOA=; b=SHaQwAlLuV3NIiy1I/0/yAWgTQ
 PoOi37gp7DWnEzIRsjq94x4LBuCUy6PoCHnCTvZxriJmMfvLHrK3PnMjJM08Tq/Z6Dp3kxcsg9TTn
 4xp8+ZJAU923FpecEA+euDsDXRKUBGn/x7rb66zpMj0gQosiix31sGAyOO3fnJ1Rs9Hs=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maWil-0002fF-CV; Wed, 13 Oct 2021 05:22:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=2DQz2WV/6nrwiR72242gRkqq8vUi4whhUhfjcP1bIOA=; b=Xa7GvbJUMqzfvYueWwVUK3Ux0y
 yeuPdYMbBAsv9epgGKu1vVzGX5AB9rd3WONNmNoS6gf48CEj/PVW94BBUJX37asekH4NgbraHAxgt
 WFbcI0BRgTaJDdjCqpms7HMs5C8IrEAXCvDE3EtdqraUh37FzwbfyoXL8GMrpEuNmvxXHABcddDQj
 moa/NVUObti9FIhR2tmwTqQ9CsQE6vspnROJ/w7q712HU1YfTb1JyVgsUDPAlJjCQuTqpVjblOKfa
 d1LJSuZJXvLyYiS+rDzxGbQbtLoGp+8OE0X2NKJLWnwHbMtue0DP5hxKAu9iTrDO6aiD7Uy0tXmC+
 90afCgmw==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWdg-0076G9-GA; Wed, 13 Oct 2021 05:17:32 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:20 +0200
Message-Id: <20211013051042.1065752-8-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211013051042.1065752-1-hch@lst.de>
References: <20211013051042.1065752-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 casper.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the proper helper to read the block device size.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> --- drivers/target/target_core_iblock.c |
 5 +++-- 1 file changed, 3 insertions(+),
 2 deletions(-) diff --git a/drivers/target/target_core_iblock.c
 b/drivers/target/target_core_iblock.c index 31df20abe141f..ab7f5678ebc44
 100644 --- a/drivers/target/target_core_iblock.c +++ b/drivers/target/target_c
 [...] Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1maWil-0002fF-CV
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:34 +0000
Subject: [Jfs-discussion] [PATCH 07/29] target/iblock: use bdev_nr_sectors
 instead of open coding it
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Kees Cook <keescook@chromium.org>,
 Josef Bacik <josef@toxicpanda.com>, Coly Li <colyli@suse.de>,
 linux-raid@vger.kernel.org, linux-bcache@vger.kernel.org,
 David Sterba <dsterba@suse.com>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, linux-block@vger.kernel.org,
 linux-nfs@vger.kernel.org, Theodore Ts'o <tytso@mit.edu>,
 linux-ntfs-dev@lists.sourceforge.net, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Phillip Lougher <phillip@squashfs.org.uk>,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Use the proper helper to read the block device size.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/target/target_core_iblock.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/target/target_core_iblock.c b/drivers/target/target_core_iblock.c
index 31df20abe141f..ab7f5678ebc44 100644
--- a/drivers/target/target_core_iblock.c
+++ b/drivers/target/target_core_iblock.c
@@ -232,8 +232,9 @@ static unsigned long long iblock_emulate_read_cap_with_block_size(
 	struct block_device *bd,
 	struct request_queue *q)
 {
-	unsigned long long blocks_long = (div_u64(i_size_read(bd->bd_inode),
-					bdev_logical_block_size(bd)) - 1);
+	loff_t size = bdev_nr_sectors(bd) << SECTOR_SHIFT;
+	unsigned long long blocks_long =
+		div_u64(size, bdev_logical_block_size(bd)) - 1;
 	u32 block_size = bdev_logical_block_size(bd);
 
 	if (block_size == dev->dev_attrib.block_size)
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
