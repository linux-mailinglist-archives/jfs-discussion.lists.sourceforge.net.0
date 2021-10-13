Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17B8A42C261
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maevz-0000ki-8O; Wed, 13 Oct 2021 14:08:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+5200d22377f13f7bc369+6625+infradead.org+hch@casper.srs.infradead.org>)
 id 1maX3z-0008W6-Ca; Wed, 13 Oct 2021 05:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vUXTd2YdXfDrfy4pbV8SMX7GiwQcZZ3XnEJ9sBFT+FY=; b=MRBUgKFC6VQZ/oKn7YbY/lDaQ9
 jrkYBvoI3sjdmj/qUDqZUI8yWG8K/QUiFEqUiVmVQOTFWEqEZeB4s444OfAPfo2MsYPtkvBekLK1h
 RL2GhcOy/PmcHBs2qF/RgQEQy4HFEcZkyBf8BBCXVg9eKTspxjnS4saz7vf8jKeJ8ZQo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vUXTd2YdXfDrfy4pbV8SMX7GiwQcZZ3XnEJ9sBFT+FY=; b=MjxVmGNb6ecf2v8us7erUAXkC1
 pCnoQRMhHa6Babt/IIYedjxk+lnbz0Y44iV/yqCiOHUpMrywm+fn5ANagqLu9s4tI+4ktdq8FHhqE
 Oy2cGIAbIk2cCXatkoImJtDx6dQs0+Yki4YWuONgb0CKkCHu7SuYVOm6D7t/9HVa4iDA=;
Received: from casper.infradead.org ([90.155.50.34])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1maX3y-0005Ly-SS; Wed, 13 Oct 2021 05:44:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=vUXTd2YdXfDrfy4pbV8SMX7GiwQcZZ3XnEJ9sBFT+FY=; b=H0UVWNgwlojCDOZ0ZDJEHbcabH
 /9k0Jdc+YLFDHne+zfEyDy0jv5BMEE4tSHTVSjq9pY+zz3oa4oUqe8AXLPv3nLRy41ZvHo0BFuSsA
 MaY/EKHh1Bp7Uf1udgCZNNBxreNpTwvrd/EqmRLDQBn6IJi8YRJFbqQmFZeteuySU1Cfmu1NFiTgQ
 2LgWePcSz6O2+8NDUH5I2rp85amag5Y71YZ+7TLQm1/Q0On+c4vchAxkdL8ToRCxOv8PtjjyJ+kWZ
 +hJqPyUbz5GIMW3ia1Y04II/0+/C9L7zroftL5CNXO1fs8k/zQt2HAH6gz3BjvISqqA/tFFfZj+Q+
 u0lN1M/Q==;
Received: from 089144212063.atnat0021.highway.a1.net ([89.144.212.63]
 helo=localhost)
 by casper.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1maWyt-00789s-54; Wed, 13 Oct 2021 05:39:26 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Wed, 13 Oct 2021 07:10:37 +0200
Message-Id: <20211013051042.1065752-25-hch@lst.de>
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
 Content preview: Add a helper to return the size of sb->s_bdev in
 sb->s_blocksize_bits
 based unites. Note that SECTOR_SHIFT has to be open coded due to include
 dependency issues for now, but I have a plan to sort that [...] 
 Content analysis details:   (0.2 points, 6.0 required)
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
X-Headers-End: 1maX3y-0005Ly-SS
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:35 +0000
Subject: [Jfs-discussion] [PATCH 24/29] block: add a sb_bdev_nr_blocks helper
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

Add a helper to return the size of sb->s_bdev in sb->s_blocksize_bits
based unites.  Note that SECTOR_SHIFT has to be open coded due to
include dependency issues for now, but I have a plan to sort that out
eventually.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 include/linux/genhd.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/genhd.h b/include/linux/genhd.h
index 082a3e5fd8fa1..6eaef8fa78bcd 100644
--- a/include/linux/genhd.h
+++ b/include/linux/genhd.h
@@ -245,6 +245,12 @@ static inline sector_t get_capacity(struct gendisk *disk)
 	return bdev_nr_sectors(disk->part0);
 }
 
+static inline u64 sb_bdev_nr_blocks(struct super_block *sb)
+{
+	return bdev_nr_sectors(sb->s_bdev) >>
+		(sb->s_blocksize_bits - 9 /* SECTOR_SHIFT */);
+}
+
 int bdev_disk_changed(struct gendisk *disk, bool invalidate);
 void blk_drop_partitions(struct gendisk *disk);
 
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
