Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF93A6CA71
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV7-0006DI-Ls;
	Sat, 22 Mar 2025 14:07:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1tvxso-0001hE-HL
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 12:23:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8RReRKppMWF+uD20FTGYQunGgSKM48G7FV/uL2ubzV4=; b=QuTbupmUe1pLCtUlvd/ZNDiKQ2
 yeAw5H22Ky7rDLyCFYLQrktKyBeJ9OP5qIGwwFUcWivCSjQsTZCKEdpp9bsirP4Zs8UzwCn5PJT+r
 RTQZL0Arg1YEMqD1w+tk2ocLca1ZZOiVOj2ysViYft8r8Gzae2dQGBZcHiDPB+3bXpRU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=8RReRKppMWF+uD20FTGYQunGgSKM48G7FV/uL2ubzV4=; b=Cui+ZiW3CFPum3uExZDQQHfxzy
 Ryj639h0JpWgPKSGbZF+eQELuE1RTN9jrjAZzvB7W0fLsdUyRiYfxMNkVj4gniC4cqAzWrmk8fyRz
 m1CuJXfz3rtq1qYoHAtsOmuoPqyulDRPoL8376jlOdsIND+R1TgbNSTKkHExpGjmHUDo=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvxsi-0001cG-7z for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 12:23:21 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-225df540edcso79838855ad.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 05:23:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742646190; x=1743250990; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=8RReRKppMWF+uD20FTGYQunGgSKM48G7FV/uL2ubzV4=;
 b=Wpie4FhDpU5Q7YON3mkSqUimg6HxTf1x8zSBrvfI8L3nOMTOqja8NQhZ5BMSn5GxCX
 TvLFOfA2BaGTfoiWEPtDvQMsdCiocMIfJJyQaEPb+6BF5YpRPDVF/asfFlZBPxr0xmrr
 SnbI146ZbSpWaYphSaRkuhT692o+bdHZHQVe4TvY+j6t8zDO+nl1xx1Ozk1biyPtVopN
 bPfhNWLL9gJ14rNvUgkVXwauI7E5lgnp1yeh2PQ5JAR9XOh+pdrYbMxoOUUfW901cxjo
 JSXb/rx/BQgtgKPX55SMCKRqZvS0CBmlIcovCEkpT2Qhy605iwd9RXuMzb6bjdnhr7Eu
 PgSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742646190; x=1743250990;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=8RReRKppMWF+uD20FTGYQunGgSKM48G7FV/uL2ubzV4=;
 b=Y83I4gUXbeyJvqfC2XOSLPm3mNlj+61zQ/Gys/i6c910NcS9BddGxFYCz42F4q09an
 KdgPyCRGFYd7i7fCrL8MVHhnloTBEkf7ZxLWTc+FtZD5/oGrjUGPNyXCbiXSXVtcOdi6
 zxC6FPwUc/SZW2IQE9qvxslLN/VgFJ/EcoKCuapR5xCd9Qr6RparVQLlWPPFdr2b4WW3
 3Pes6CQkaLu3Uc5IcAHbgLbGqlKLPdiiq6dvfwU2cW8jXS1Q+wxfuUwlBQhkzt2BYGSH
 k9wHCCGEcYwyeakNTBYGckDHljtGtrSwbM8ydZpUqGnz1+gINjlGHLHKvHHKZAcCi4zd
 7syw==
X-Gm-Message-State: AOJu0YzyFSuFaOJBEUdrD628oPQVo97U5Fcjk3ijdlFGYmd1CTu3Jp7E
 b9pL8b42J6MlZheNREfpjQe0ZGwGThkJQy+phyEV2IvmEabFxG3LLFAi0zOxGik=
X-Gm-Gg: ASbGncu6Q7ygXf5TFyY+0KBiFPiI9GW/NXdiTrJQfabpVQmRTF0TVjUspuUuS/mcOH4
 TGLwhepIHXc0K2azCRppAkj4rE297RbcPnt5J+yO3PXiKLahmTJu+zIJHltWyVbCY0GAefJ3miI
 kj9OSvEd9rJEkFnX1prlQPcGf+DFAQjNj5e2hX3zHdNlNXTxpz4Gs7oVQ//aD35Zkz9JY9Uvu5M
 Lh4r4TZWDzrh8DAU0qBhf5aoH4sYTm8sidP6U+ecdb58jLH2+lD/rulUwN9dtCyvhJPJ5bNg6+T
 dIn/bTYO99Z2y8Kkr/lLnE54M4dPEhoCPEUcj9p7PMSCyik=
X-Google-Smtp-Source: AGHT+IFM6C6nsADkgGmSagtKIrEtTJsOZ73L79oOwyzmajb4Oh5MtqhqzzRCf/RiRGLEbixg+ziq9g==
X-Received: by 2002:a17:902:f603:b0:216:271d:e06c with SMTP id
 d9443c01a7336-2278067c0b2mr108319725ad.4.1742646190356; 
 Sat, 22 Mar 2025 05:23:10 -0700 (PDT)
Received: from pop-os.. ([2409:40f2:1044:5619:882a:31f8:4de1:77f1])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-227811d968asm34198795ad.162.2025.03.22.05.23.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Mar 2025 05:23:10 -0700 (PDT)
To: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com
Date: Sat, 22 Mar 2025 17:52:33 +0530
Message-Id: <20250322122233.218306-1-duttaditya18@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <6745ebeb.050a0220.21d33d.001a.GAE@google.com>
References: <6745ebeb.050a0220.21d33d.001a.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: #syz test
 git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
 master diff --git i/fs/jfs/jfs_dtree.c w/fs/jfs/jfs_dtree.c index
 93db6eec4465..de33026d18d2
 100644 --- i/fs/jfs/jfs_dtree.c +++ w/fs/jfs/jfs_dtree.c @@ -2613,7 +2613,7
 @@ void dtInitRoot(tid_t tid, struct i [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.180 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.214.180 listed in sa-accredit.habeas.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.180 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tvxsi-0001cG-7z
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:06:58 +0000
Subject: Re: [Jfs-discussion] [syzbot] [jfs?] UBSAN:
 array-index-out-of-bounds in add_missing_indices
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

#syz test git://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master

diff --git i/fs/jfs/jfs_dtree.c w/fs/jfs/jfs_dtree.c
index 93db6eec4465..de33026d18d2 100644
--- i/fs/jfs/jfs_dtree.c
+++ w/fs/jfs/jfs_dtree.c
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


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
