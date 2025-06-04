Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C1AACDBA4
	for <lists+jfs-discussion@lfdr.de>; Wed,  4 Jun 2025 12:06:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mQIB6IVoJeiAL1kIAH1S+5kstx250iBCTFjDg0kPA8I=; b=FwZKkcZ3WawVCo7dyQjyJ0oxtW
	3aSdP3hE9eXX1X92cDE61vcx0tA60lPKVJrOACKw/Gw0aou+Zp9H4FIDKOZ0hnSIpyNWbc405mHof
	Bsc/L+6izWtU8FSfwJrnzR4juPN8wSWfKLdRzVJI1H8SFUxl8EQL36RUuSRqV6ttxML4=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uMl04-0000Jz-Na;
	Wed, 04 Jun 2025 10:05:36 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dmantipov@yandex.ru>) id 1uMl02-0000Ji-Rq
 for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Jun 2025 10:05:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=mPuPNfceRgwM3c16Fd2pA6XeNkimCD+u5bheDsVE/T8=; b=EtmDYMVpBbQjkaqrV5Ni5P0hPT
 acJjRoMefczq/38y7mGAV9Rei+aoUoOd4TdR0gnGvruiNJCbtoTfVqikQAJgCIe151j5dwyhpm6pn
 1ggOhM9TQapjKk+qHFJ41AebAngNAyDRJ078lZzijE/SugicPxcy3NwendCs0XnZeYo8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=mPuPNfceRgwM3c16Fd2pA6XeNkimCD+u5bheDsVE/T8=; b=A
 PgNqxdw229dGjcJjHDCJPpvMjSgyO+M1SRZQ4zTd4r3mTqgSPT8GSYvxX/Y9IGchV2LhpiQht/h9p
 KG/M5YEVgaLf+dwUnSP6wp5ew7Yba5y+di5w9iO6+e1gzNm8s/vZYg9tx2NrhLpc6gXgdBiEZVEV0
 XtQ1ggVoCN3LsxjE=;
Received: from forward103a.mail.yandex.net ([178.154.239.86])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1uMl00-0001j7-Fm for jfs-discussion@lists.sourceforge.net;
 Wed, 04 Jun 2025 10:05:34 +0000
Received: from mail-nwsmtp-smtp-production-main-84.iva.yp-c.yandex.net
 (mail-nwsmtp-smtp-production-main-84.iva.yp-c.yandex.net
 [IPv6:2a02:6b8:c0c:b086:0:640:ce9c:0])
 by forward103a.mail.yandex.net (Yandex) with ESMTPS id 1E16D60E72;
 Wed,  4 Jun 2025 13:05:20 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-84.iva.yp-c.yandex.net
 (smtp/Yandex) with ESMTPSA id J5ZvqrdLf4Y0-knfkrBP0; 
 Wed, 04 Jun 2025 13:05:19 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yandex.ru; s=mail;
 t=1749031519; bh=mPuPNfceRgwM3c16Fd2pA6XeNkimCD+u5bheDsVE/T8=;
 h=Message-ID:Date:Cc:Subject:To:From;
 b=B+RruylqeOsW3zS3CoEnLcMynXuetiMN9DdHbI9Opbq1WBw99RAyCFn03RBFbakvW
 H/W+LI5ee9Sz6o3Ux2cQKII8ZCO9VE0cDomv/G59GEHj8mXod7m/hD5+xdx1eQdkHd
 I6qx2rXpUBF3tGqHBuG4Fcmuf+24IKvCj8aEK6dM=
Authentication-Results: mail-nwsmtp-smtp-production-main-84.iva.yp-c.yandex.net;
 dkim=pass header.i=@yandex.ru
To: Dave Kleikamp <shaggy@kernel.org>
Date: Wed,  4 Jun 2025 13:05:18 +0300
Message-ID: <20250604100518.1126076-1-dmantipov@yandex.ru>
X-Mailer: git-send-email 2.49.0
MIME-Version: 1.0
X-Headers-End: 1uMl00-0001j7-Fm
Subject: [Jfs-discussion] [PATCH] jfs: reject regular file inodes with
 negative size
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
From: Dmitry Antipov via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dmitry Antipov <dmantipov@yandex.ru>
Cc: jfs-discussion@lists.sourceforge.net, Dmitry Antipov <dmantipov@yandex.ru>,
 syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot has triggered the BUG() by using a crafted filesystem image with
large negative on-disk inode size. So add an extra check to reject such
an inodes with the convenient -EFSCORRUPTED as early as possible, i.e.
when filling the basics of 'struct inode' in 'copy_from_dinode()'.

Reported-by: syzbot+630f6d40b3ccabc8e96e@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=630f6d40b3ccabc8e96e
Signed-off-by: Dmitry Antipov <dmantipov@yandex.ru>
---
 fs/jfs/jfs_imap.c | 3 +++
 fs/jfs/jfs_imap.h | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index ecb8e05b8b84..afea481cd6ee 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -3079,6 +3079,9 @@ static int copy_from_dinode(struct dinode * dip, struct inode *ip)
 	}
 
 	ip->i_size = le64_to_cpu(dip->di_size);
+	if (S_ISREG(ip->i_mode) && ip->i_size < 0)
+		return -EFSCORRUPTED;
+
 	inode_set_atime(ip, le32_to_cpu(dip->di_atime.tv_sec),
 			le32_to_cpu(dip->di_atime.tv_nsec));
 	inode_set_mtime(ip, le32_to_cpu(dip->di_mtime.tv_sec),
diff --git a/fs/jfs/jfs_imap.h b/fs/jfs/jfs_imap.h
index dd7409febe28..025d72890dac 100644
--- a/fs/jfs/jfs_imap.h
+++ b/fs/jfs/jfs_imap.h
@@ -35,6 +35,8 @@
 #define INOPBLK(pxd,ino,l2nbperpg)	(addressPXD((pxd)) +		\
 	((((ino) & (INOSPEREXT-1)) >> L2INOSPERPAGE) << (l2nbperpg)))
 
+#define EFSCORRUPTED	EUCLEAN		/* Filesystem is corrupted */
+
 /*
  *	inode allocation map:
  *
-- 
2.49.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
