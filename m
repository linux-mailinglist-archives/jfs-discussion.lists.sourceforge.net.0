Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FC6AA77EF4
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Apr 2025 17:30:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tzdZ6-0004cC-BJ;
	Tue, 01 Apr 2025 15:30:12 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1tzdZ5-0004c5-00
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 15:30:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZN9EoU3NOIXLHMOmv53dJjYHmNGZXjtjYsDTIPQ6mb8=; b=AF1QtDV0Wi7OlwdY1YLooQie1c
 /TYm9P8cSAxORLOscZsPOuihGmVXo2QSbCBQUNmPVa/4etfgv9pwHV5W03rb4FF2B2eTErjA821Vx
 dMn39mtALZkVmpnscpMhr4ip1hxIHuiNyMIHP/parEbwOauUhu3DejKVXYca9Pu22jxs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=ZN9EoU3NOIXLHMOmv53dJjYHmNGZXjtjYsDTIPQ6mb8=; b=W
 w3oXaWsP1k83YeGVERJogYujrQGjeN0L11Vx8TiJYvnUszBKLP/yporzQclhwkgj6UkQbKniQxLCo
 W7SQwK89gGndLbPNx77M7/7OiETTxSwSotWyExEwges9CJC8VI0isOdsGplRNhQ0kRV0iKMx4gELB
 eHAFMR2g4Zde5AvM=;
Received: from mail-pj1-f44.google.com ([209.85.216.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tzdYo-0000DG-J8 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Apr 2025 15:30:10 +0000
Received: by mail-pj1-f44.google.com with SMTP id
 98e67ed59e1d1-301a4d5156aso9145966a91.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Apr 2025 08:29:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1743521389; x=1744126189; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=ZN9EoU3NOIXLHMOmv53dJjYHmNGZXjtjYsDTIPQ6mb8=;
 b=NR/pkcr2neoPHmwAiACcbypTBPrCwuPWxHXaoILfgi21BpyMEbYgsvtRfW8Y6jzw+H
 knGM/IeXbzXsHfXVJFr0jqKJ0N+Zvgf420MJqE6gQm+495dFlKgwPpFPuznFdyYej3vf
 dE/PcB3/U9SYwSKB4/3huxRrTWFk3RffGa7MvJG25H9TpfJmFo9kYQh94zIJ4jKS5exi
 Ji+ywQW4rojtxh8qfBmH4VXeJ/nem0vqfBr6212dJKb0ayMx+N20KX0Mu982+J1cFQfq
 LJSWj35d/Hyd4eTzQeJlw9/HE9gTPhhwB9PKTFcTCcvQyX42lki+LWqbD6Nxt0Ua7nMC
 KQCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1743521389; x=1744126189;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=ZN9EoU3NOIXLHMOmv53dJjYHmNGZXjtjYsDTIPQ6mb8=;
 b=hjWM8T0orXL00Ga58hVpjP8n2T1vIsVSHRCCMTzRkGfx+toPROGngYrc1p/OB2vZ5D
 y3xE7id4DsohZ91Q4KkTtBwr/x9fZvWVzUnyFTzMDrzz4r4FDuEBOKDdtZwHHiLEkNbl
 btu9TADIfqWDEjIfi99HJe799MWrJVumRTuZqCnRaERrQkKQMEOK6mvZIn3HZnUzfzkk
 2uH+hDAMQxRbTZnjSF96fiAhqYI0NMCYV2PSbp9Cy5f8MBBw9EipIrle++l/KtEjLb6l
 1cxx/VSRInjjymUjzty5/Z3RutPFStbDHkCd43Hj0T74scknEHxPOuLES06j1wuTu99W
 6qAg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVw27fJVtfjXjCcRGxb8CtRPvR7QlvViKvrelDSfRxm/3INKD5mdQNt46wA0MjhboT6dF8CjgYmGR50zEQQAg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5wrOSAS8s2r0OWP9kRNVjlLzOTGCtB3n+wunGWwXosv/LjQRf
 YbOjjnxuN7fyNYXuNfkxHdMYXCGuu2d2ix3VhecK02GhGgAn5F10
X-Gm-Gg: ASbGncumbvaCKGVvd0tsWuqp/3nBfKXarU0TqsHc+FuAvo1hcpzbEGaFdsUONeCq5p4
 lz/hpuv+tD4QYBonKrll6QLGqe9Wue2/0MmWdbTb/97cED//UDgkwZ1oYmeW9nYbdFhcg20zpxs
 NL7yM2kkc3bU0SFWUCtVwgDVNejy+SpTRZiAv2PVbg5cRDzGygp3LRkQNJ5wrnNYIh778vCjH5w
 NZO5uEpUo3eiGYr6GUVCl62Fki/M93iWPzXk0EeTICYC8JX2oh7fH09nlFEfBqZBjfDCvB7vfLv
 QvW02+kBNWlGHTCWrZ9Oxyby6C2qZskTQuycEOVXMaLk
X-Google-Smtp-Source: AGHT+IHbLzLyxoXgCDQb88U11Dt/J3tK3R1kD5HUq7qdWDEwGWlrdnlTlmhdMwaV2IS/+9lAfTNmDw==
X-Received: by 2002:a17:90b:4b06:b0:301:98fc:9b5a with SMTP id
 98e67ed59e1d1-30531f7a6cemr15420719a91.6.1743521388814; 
 Tue, 01 Apr 2025 08:29:48 -0700 (PDT)
Received: from pop-os.. ([49.207.199.107]) by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3039f1d430asm11795912a91.35.2025.04.01.08.29.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Apr 2025 08:29:48 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>
Date: Tue,  1 Apr 2025 20:59:16 +0530
Message-Id: <20250401152916.618963-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  stbl is s8 but it must contain offsets into slot which can
 go from 0 to 127. Added a bound check for that error and return -EIO if the
 check fails. Also make jfs_readdir return with error if add_missing_indices
 returns with an error. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.44 listed in sa-trusted.bondedsender.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.44 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tzdYo-0000DG-J8
Subject: [Jfs-discussion] [PATCH RESEND] jfs: fix array-index-out-of-bounds
 read in add_missing_indices
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
From: Aditya Dutt via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Aditya Dutt <duttaditya18@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Edward Adam Davis <eadavis@qq.com>, linux-kernel@vger.kernel.org,
 syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, Aditya Dutt <duttaditya18@gmail.com>,
 linux-kernel-mentees@lists.linux.dev, Roman Smirnov <r.smirnov@omp.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

stbl is s8 but it must contain offsets into slot which can go from 0 to
127.

Added a bound check for that error and return -EIO if the check fails.
Also make jfs_readdir return with error if add_missing_indices returns
with an error.

Reported-by: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com./bug?extid=b974bd41515f770c608b
Signed-off-by: Aditya Dutt <duttaditya18@gmail.com>
---
 fs/jfs/jfs_dtree.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 93db6eec4465..de33026d18d2 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -2613,7 +2613,7 @@ void dtInitRoot(tid_t tid, struct inode *ip, u32 idotdot)
  *	     fsck.jfs should really fix this, but it currently does not.
  *	     Called from jfs_readdir when bad index is detected.
  */
-static void add_missing_indices(struct inode *inode, s64 bn)
+static int add_missing_indices(struct inode *inode, s64 bn)
 {
 	struct ldtentry *d;
 	struct dt_lock *dtlck;
@@ -2622,7 +2622,7 @@ static void add_missing_indices(struct inode *inode, s64 bn)
 	struct lv *lv;
 	struct metapage *mp;
 	dtpage_t *p;
-	int rc;
+	int rc = 0;
 	s8 *stbl;
 	tid_t tid;
 	struct tlock *tlck;
@@ -2647,6 +2647,16 @@ static void add_missing_indices(struct inode *inode, s64 bn)
 
 	stbl = DT_GETSTBL(p);
 	for (i = 0; i < p->header.nextindex; i++) {
+		if (stbl[i] < 0) {
+			jfs_err("jfs: add_missing_indices: Invalid stbl[%d] = %d for inode %ld, block = %lld",
+				i, stbl[i], (long)inode->i_ino, (long long)bn);
+			rc = -EIO;
+
+			DT_PUTPAGE(mp);
+			txAbort(tid, 0);
+			goto end;
+		}
+
 		d = (struct ldtentry *) &p->slot[stbl[i]];
 		index = le32_to_cpu(d->index);
 		if ((index < 2) || (index >= JFS_IP(inode)->next_index)) {
@@ -2664,6 +2674,7 @@ static void add_missing_indices(struct inode *inode, s64 bn)
 	(void) txCommit(tid, 1, &inode, 0);
 end:
 	txEnd(tid);
+	return rc;
 }
 
 /*
@@ -3017,7 +3028,10 @@ int jfs_readdir(struct file *file, struct dir_context *ctx)
 		}
 
 		if (fix_page) {
-			add_missing_indices(ip, bn);
+			if ((rc = add_missing_indices(ip, bn))) {
+				jfs_err("jfs_readdir: add_missing_indices returned %d", rc);
+				goto out;
+			}
 			page_fixed = 1;
 		}
 

base-commit: a8dfb2168906944ea61acfc87846b816eeab882d
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
