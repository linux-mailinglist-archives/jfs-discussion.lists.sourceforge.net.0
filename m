Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 81199A6CA70
	for <lists+jfs-discussion@lfdr.de>; Sat, 22 Mar 2025 15:07:40 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tvzV8-0006Dt-9G;
	Sat, 22 Mar 2025 14:07:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <duttaditya18@gmail.com>) id 1tvyVY-0002Np-94
 for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 13:03:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Jp3f+m8hDUdzwFKD8WssiJEprIkmH8XOlrFoJxIL6lY=; b=ehU/JbVAETZDkyliNCN41GL/yM
 qq6X5e3y8faebFGCY2JYinypR8LpNtMENVY1bMCKgzYZX2An2EKkLblAhRz6c5//z+701Tg3jPDTw
 bi1rI+qEVr7r2uX6LrMJ+zjx8b7x2zIPtvG5buV1LmyN3Jekp1yQngRekEQeUkXESgAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Jp3f+m8hDUdzwFKD8WssiJEprIkmH8XOlrFoJxIL6lY=; b=box1jBUUkm1/I1f6sP+yK0vC46
 GgxYiQTyUBhOET0TtqyrAtMz+haN/7k35an38L6ZN+asLRZP4NnpPShQ0/otR6UjHYpfs0rTq0qEl
 +660du4NVI6zBF3elM4h/odVZZWdx6SV08t+G3dI7DCrBpKJIbhutzeqW/UCj7ZBSlP4=;
Received: from mail-pj1-f50.google.com ([209.85.216.50])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tvyVT-0004Ge-4r for jfs-discussion@lists.sourceforge.net;
 Sat, 22 Mar 2025 13:03:24 +0000
Received: by mail-pj1-f50.google.com with SMTP id
 98e67ed59e1d1-30332dfc821so92161a91.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 22 Mar 2025 06:03:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1742648588; x=1743253388; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Jp3f+m8hDUdzwFKD8WssiJEprIkmH8XOlrFoJxIL6lY=;
 b=K0csEGH0VJ8skNqBpzkNEo69pU87xCoSv1lr3l/Um3RYVjCDhiwcWB4L0CIE4+rEmE
 LrvpqAdk5cY7Rs60p2tamZIxKqrq0glKGLHlPWWR8anp6dpVanDLDWJabZGwnesRpZqY
 Sym2aGImzeMJXTSAZguw7IQ1JWC6gjZnBGt2IP1qYlA51icCFFvGvXZj0iUw6Nn7JiYy
 2DVBFEpbItUU8kqEfNFjzb7WGNtH4MIxPAl1BKjKZl1pLmmGC+KMD9G7XHmR7XEUUqiL
 WlHPWXmee7unHyW5xlcPjy/rKJYZlQa4D67sws3Aro2oIpGbKgpS3jpiztTlt+LGNZVx
 V+xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1742648588; x=1743253388;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Jp3f+m8hDUdzwFKD8WssiJEprIkmH8XOlrFoJxIL6lY=;
 b=vRNBaDEQWIg74Pj01oDfDaOoEB22a2OmDkhMMHptNlxNmdeHmDUaSIFCiVCiQh4gw6
 ye6NDIdIOlNHP7RLwSden7JrTh+POU7aMghJpe07V7MnJCyPbRMM9FovR/lNszdliq1V
 +TSgUucI6Zh0R9Owh6Ep6HQO3X6U+WMto1IdRSHV7ROJabOWbt9DpyCLpJr8E4reZHqm
 GzscmPGTkxD66YOePOAKbCEIZpf/TZUIGcbZ2i2RTD7cQMQvspim+OSMBbT4qwsKaWGF
 tgLZHEI6VQeMgwJWs6U6+mFiayuTtk23a2fWWK8Yk52KSdZ5G3inssXQOQH+2MPyILHJ
 KFwQ==
X-Gm-Message-State: AOJu0YxeP6wWKTKMvHccel7Gy155Lf0H2zRQEzXLv0CqYy2pSp2Z+ZUE
 I8YWp8PWG3T73m+XJjQQ8ojS4NAfErFnX+qQUh3BebHG7O0bCxj+
X-Gm-Gg: ASbGncu2UkHfTT4A0gEa5kkrNwWvUYzat4h3fFOk0wnwdn8piAjo9NB+qeDhNZzVZHN
 TOxDUHYAhp2DIYJMnYNeTUqJUo0PLrJLVNDCVkQQ0moFnSM1PRF5tq8KlTHJId/2lJoDHJcvQ2l
 a2GZ2P06J1D+sAaHW5D2um4j28tJjFsRob2SPWZkZnvoDLhBtizY3pBocWvDyzUnicKJ/iPle05
 o2IHAYCfR7R6MHr8ZUO387PuRgbWwR5bLIi1+Vxj3RwRBEaqJUSwEWI14gv2BtBS1hosU+VEBFt
 +Xo0NSL6Aq+wrDAVAKzZUxx8tiTKEagv59U0BHYoI/l4cbI=
X-Google-Smtp-Source: AGHT+IHs/wSMhvLrY1D4gAEYACP9WT0SUj0yyR8NCytlkMYsN4hnlgObgoaTOHCTE4yHuX6v3BXyYw==
X-Received: by 2002:a17:90b:2dd2:b0:2f6:d266:f45e with SMTP id
 98e67ed59e1d1-3030fe8d517mr12298088a91.2.1742648588196; 
 Sat, 22 Mar 2025 06:03:08 -0700 (PDT)
Received: from pop-os.. ([2409:40f2:103b:bee1:9075:e78a:e271:6953])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3030f60b919sm4028792a91.27.2025.03.22.06.03.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 22 Mar 2025 06:03:07 -0700 (PDT)
To: syzbot+b974bd41515f770c608b@syzkaller.appspotmail.com
Date: Sat, 22 Mar 2025 18:32:57 +0530
Message-Id: <20250322130257.227256-1-duttaditya18@gmail.com>
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
 Content preview: #syz test diff --git i/fs/jfs/jfs_dtree.c
 w/fs/jfs/jfs_dtree.c
 index 93db6eec4465..de33026d18d2 100644 --- i/fs/jfs/jfs_dtree.c +++
 w/fs/jfs/jfs_dtree.c
 @@ -2613,7 +2613,7 @@ void dtInitRoot(tid_t tid, struct i [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [duttaditya18[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.50 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.216.50 listed in sa-trusted.bondedsender.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [duttaditya18[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.50 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.50 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1tvyVT-0004Ge-4r
X-Mailman-Approved-At: Sat, 22 Mar 2025 14:06:59 +0000
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

#syz test

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
