Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B403A6CA73
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:41 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV7-0006Cv-0Q;
	Sat, 22 Mar 2025 14:07:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1tvvIv-0000A0-ME
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 09:38:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MdP4ZXitUOh9kblN+XbKRvo5B0HnicG0HrvxthmlC2c=; b=HfakXxGnZNvaT8UlOfWDTZYYkK
 W8VqlyfO7RSqVcciQ0zfQmX+wSlKTH7DWexDhUiAUGE5lpVGMFypaaP1qXxCQ/7pDLTTi9uLPbICC
 AP+LjWS0iiU/dzP3Bz/Nh7+r6+JouBjulduaLdTZ++EmU7eP+hVpSZDSzEWfmsKw73LY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MdP4ZXitUOh9kblN+XbKRvo5B0HnicG0HrvxthmlC2c=; b=cUurkA63M1d7Bq2Nhns4QBAl7d
 rSD4Fm2hJhpPwUeAE14y3gtlOG4P4xFG/z0VLbHfJZcW3uvoT8Ih0hwFPqq9ApZQkOrxURgVF7cmX
 UYSnuKIBxARRW9VFVGc/0jhFlHjhmlepf/Ja4nKM2JCQO4+I7R/q/YMvNA/skfwyNYVY=;
Received: from mail-pj1-f46.google.com ([209.85.216.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvvIl-00083t-Gc for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 09:38:10 +0000
Received: by mail-pj1-f46.google.com with SMTP id
 98e67ed59e1d1-2ff615a114bso5930552a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 02:37:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742636274; x=1743241074; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MdP4ZXitUOh9kblN+XbKRvo5B0HnicG0HrvxthmlC2c=;
 b=el7GCOfXd8Jcw70RN7HFepqt5/wdJmKyh0LN5uCUYuapUOzCQDkZn3yseBg0aCEd1F
 GlTnKZGh/qrDWnsYz50O/9aQN/fHUP7ZkDGR0gltoOsZRS3X5/j1m4INDnc1iIozFy7o
 KYtOqPiaEeaxByIM++Wczm8julkuIx358dg5sZ162T2qctcyTVYEOIHdO9YRzzFmXe8I
 FLTR/iu0Ay2qudGI9RjSU2u0/HZXRGzpPad1+MOOSY+CDAxqA+VV8hfaAkTkWYG634Nw
 xmFYP5xIkNvpXqHmd3/WpEVV7EN0m8Ett+Ntcvjj0yIraVeLat4EudAQr4E+sftuJIxF
 BKKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742636274; x=1743241074;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=MdP4ZXitUOh9kblN+XbKRvo5B0HnicG0HrvxthmlC2c=;
 b=aKSgNinOi6LyWMf5ouUi3RVGl13STmMjFo3Qsc0yJowJlNuI6ausshvqwOop/Y170G
 Y97Crt6E8WyWlJX4gWehIoulePa/rPJ7rX5vWAXC8HxtJ9V16skZpxwxq6VuLBxazpGs
 iPqT4t9wiuUAJDzMS8c51MIV/+tCHJtzySodD0psgDZh3Y06JsQrxpoFaW9ZEOtZlW/0
 jxNpu8CRbetW1to1ppwM0rrrVcFqG/izjDnaap+wUdtd9mL5N3xndH02W0YPDiU1AYX8
 y3slnZ3XmexCpbiaQkL3HBk0rLJqao63vPrxgiZrZjfmWSUZ9tDZNzawuVqaqMmuqU+9
 UH+A==
X-Gm-Message-State: AOJu0Yz1a2YFJxzCqZXo7ENDRhyi99qcBDoJvfsAcVlxsRvtZJeZsnDg
 6a+msEv/LJpQ6V7jWsAkQEHnOyyrQoNEDhlHai9ix2eBcTeqQ5cy
X-Gm-Gg: ASbGncs1uAYPfhNfvR8m1eB7yXiSuxaVr5BtGK0CXqdoYymtFMLTrRSAmfQ1fYbs34N
 Ha19fm7QSR9zK06gSvcHoF1v26ShZJ7gr18Mc+Set3lYIvMxRae0wpElgE58oFpX2wFXaZ+RSKB
 6pKVCxCvZC90DrNrVYo2WhDKzThG3FvMCX0zv8xww2qx/jIn43g0hJ6jo86oU1yNUdKi+i2o55c
 ELsYfkQPhlCnk26UEDP1JnVdvJPtxuFrixjtNDx8G1Yp1KafCjM+rOcx9qmOWIYwh2uvMj7/PiH
 /76zISbr6ID6d4Dtg98KGVbLR6XtBqJBgsV8kloDFuqSG0RD
X-Google-Smtp-Source: AGHT+IEI6chihQoruZ28OxzHXXZbvpvcX+Hc7zhQMWZwLyPhTcaNxaPxyu1y2dKQodskKWeCWaVB7g==
X-Received: by 2002:a17:90b:2551:b0:2ee:9661:eafb with SMTP id
 98e67ed59e1d1-3030f38e57dmr10775736a91.12.1742636273706; 
 Sat, 22 Mar 2025 02:37:53 -0700 (PDT)
Received: from pop-os.. ([2401:4900:65c5:3a53:51ff:1da3:89ce:3f84])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-301bf576884sm7783256a91.1.2025.03.22.02.37.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Mar 2025 02:37:53 -0700 (PDT)
To: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com
Date: Sat, 22 Mar 2025 15:07:37 +0530
Message-Id: <20250322093737.197101-1-duttaditya18@gmail.com>
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
 Content preview: #syz test https://github.com/kleikamp/linux-shaggy.git
 jfs-next
 diff --git i/fs/jfs/jfs_dtree.c w/fs/jfs/jfs_dtree.c index
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
 [209.85.216.46 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.46 listed in sa-trusted.bondedsender.org]
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
 [209.85.216.46 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.46 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tvvIl-00083t-Gc
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

#syz test https://github.com/kleikamp/linux-shaggy.git jfs-next

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
