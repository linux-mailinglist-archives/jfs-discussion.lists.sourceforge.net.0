Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F30431B71
	for <lists+jfs-discussion@lfdr.de>; Mon, 18 Oct 2021 15:31:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1mcSjh-0002CN-Au; Mon, 18 Oct 2021 13:31:29 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from
 <BATV+653fb0268b18c2e086a8+6630+infradead.org+hch@bombadil.srs.infradead.org>)
 id 1mcPd1-0007NC-3I; Mon, 18 Oct 2021 10:12:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ufY1F9BE0hyiVrMwVKJsKp268/NwKnrkH8WRQVRWk5I=; b=LEWzN3owLpThKE27EMnLFD4d1l
 ywpWchV+dwTrNF1sgMwTrzFxVupuQX0SanO9JzS2JzBksIphWuonmwYPzh3yjKqcswkQ60kEzjTxv
 CK+l9vtnoxj5T9zr9Nz+95VL2kpPnZ9p/OMBRWdFQ/Zh47it3BYdN56VZ1r8lbUPsnfk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ufY1F9BE0hyiVrMwVKJsKp268/NwKnrkH8WRQVRWk5I=; b=YpSlJwjW0Yb3NutgBwiYboG9vp
 l2XJSnaJP2A9KMQk7+s4GVWLAapyYK9U7Pp2JSmlKCxP6wep8C7dMqOIXCXBpeFbw6ELKyhuncI3C
 NW/Ov80bUZkmlpRhOVY2MSX0OT4jKaeyhMgAU/y94jH5l4fLnv/X7hZQreFuS3NgIKKA=;
Received: from bombadil.infradead.org ([198.137.202.133])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1mcPd0-0002yV-G4; Mon, 18 Oct 2021 10:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ufY1F9BE0hyiVrMwVKJsKp268/NwKnrkH8WRQVRWk5I=; b=RyjaMpOyCyue3pLPX/xNtoj3nq
 rx8YlEZ705/rKwKdJ5j6ftYyft14Nd5lmeU2HOeoDKNZdZqEFb8tcGWjNKmuyQ7TIVDACuaCybOnF
 Hw7hxgyG0AEyGPi06m5bGMNWRzADYGd7XSzuDPxw411/azHNisWsvQGdWiHfpPSM0P6iWc2qXN240
 E4XLB+C9Xw7VXkSnHoTpUosw9MXZHaxgjMd76781ZEP3v48okz1audNZi/h9/XY0+D6BH6eZk/uZZ
 1gf8QCsBdjVwaclvb0GJThzBZPbjtmteLN0beWWqy3sOAdtJb9q4roLF6oQHM10/X0bdNGgCruID/
 lsO0NOzw==;
Received: from [2001:4bb8:199:73c5:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mcPcg-00EuDu-HQ; Mon, 18 Oct 2021 10:12:02 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Date: Mon, 18 Oct 2021 12:11:11 +0200
Message-Id: <20211018101130.1838532-12-hch@lst.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211018101130.1838532-1-hch@lst.de>
References: <20211018101130.1838532-1-hch@lst.de>
MIME-Version: 1.0
X-SRS-Rewrite: SMTP reverse-path rewritten from <hch@infradead.org> by
 bombadil.infradead.org. See http://www.infradead.org/rpr.html
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Use the proper helper to read the block device size.
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> Reviewed-by: Kees Cook <keescook@chromium.org>
 Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com> --- fs/affs/super.c | 2
 +- 1 file changed, 1 insertion(+), [...] 
 Content analysis details:   (-2.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.137.202.133 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1mcPd0-0002yV-G4
X-Mailman-Approved-At: Mon, 18 Oct 2021 13:31:19 +0000
Subject: [Jfs-discussion] [PATCH 11/30] affs: use bdev_nr_sectors instead of
 open coding it
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
 reiserfs-devel@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>, linux-ext4@vger.kernel.org,
 Chaitanya Kulkarni <kch@nvidia.com>, Kees Cook <keescook@chromium.org>,
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
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Chaitanya Kulkarni <kch@nvidia.com>
---
 fs/affs/super.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/affs/super.c b/fs/affs/super.c
index c6c2a513ec92d..c609005a9eaaa 100644
--- a/fs/affs/super.c
+++ b/fs/affs/super.c
@@ -389,7 +389,7 @@ static int affs_fill_super(struct super_block *sb, void *data, int silent)
 	 * blocks, we will have to change it.
 	 */
 
-	size = i_size_read(sb->s_bdev->bd_inode) >> 9;
+	size = bdev_nr_sectors(sb->s_bdev);
 	pr_debug("initial blocksize=%d, #blocks=%d\n", 512, size);
 
 	affs_set_blocksize(sb, PAGE_SIZE);
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
