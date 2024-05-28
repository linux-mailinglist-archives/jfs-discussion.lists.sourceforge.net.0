Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C5A8D2352
	for <lists+jfs-discussion@lfdr.de>; Tue, 28 May 2024 20:32:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sC1cC-0000Bz-Ky;
	Tue, 28 May 2024 18:32:04 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <llfamsec@gmail.com>) id 1sC1cB-0000Bm-Mu
 for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 18:32:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=0QF/V+uYX2mr4LNlURpWGbHa4W5+HkUPlMD8YeX41JQ=; b=LHF9CLIifybGY29YvsGnj/SuDi
 SUJC24N5mUZbocoYim6DRV5kU75BO1NARrWI2DwcZDAmjpLz7xdnSOdki3cgxEc2iJ6c7cgO5W8Bj
 kVtRniwlTRnevWKCXUfQdyfWuiV7Ry3xZnKmo2roUz92gAa4J/4JGQGVPKck0YakmVfE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=0QF/V+uYX2mr4LNlURpWGbHa4W5+HkUPlMD8YeX41JQ=; b=V
 bQ4qyC3tJqdHG6a4GqM+POPlQSrm7OrgJVSqIwioUGJSAY8UdLuhPGGN6xtwE2ATEFwn7kY5hf48m
 Bf99jrgM/UGN+aDEgCYWHakgBW7Afkt7Hf3fSg1tCSGxmeszVplQVpR2aK1ICJhBAnuINdppsPG5E
 3/P2kdxjkVBUwe48=;
Received: from mail-pf1-f170.google.com ([209.85.210.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sC1cC-0005zO-1h for jfs-discussion@lists.sourceforge.net;
 Tue, 28 May 2024 18:32:03 +0000
Received: by mail-pf1-f170.google.com with SMTP id
 d2e1a72fcca58-6f8e98784b3so858537b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 28 May 2024 11:32:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1716921112; x=1717525912; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=0QF/V+uYX2mr4LNlURpWGbHa4W5+HkUPlMD8YeX41JQ=;
 b=D17UQcgpCyB2Wx5TWvWJjIXS0QldpXmLeDifQAZKgFodT0MZGmLwsu9zT6n7/eh1FH
 RQjQyYdCUwmY/cFUEdB5hK9xKaQVCDXkHxP4BJ/RSEMecTwOLfHNSewUbiL6qzRkr4F5
 hHxdcmengTCw+4j4vtWFpPJL9/njcDCoFjoiktb1XatWW3o7oUniaRbQTc/7h7BAanSz
 22ub3B8InBL69d15ZewZQ+1cIpjASgZndNQGt1YTwmMZD3PQSKEhJlUzV3asQN2DrZtT
 pYsb70H1K8cCH/CEZblGKL94GTd2edWe5TQ6ETWc+UehQRjufqNS6V8kw4vYP3HNRWrZ
 ciDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1716921112; x=1717525912;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=0QF/V+uYX2mr4LNlURpWGbHa4W5+HkUPlMD8YeX41JQ=;
 b=EwKoQS6jogUPUqgMu5q0oAZfFlpT4zQPIPDfPTLyoa9KUnUvA0n+TV2rgCpHeMT3oB
 IdCqqQkRKSb5ykM409MPHI3ck3BT0SWhJ54BHGsvV/RQgk+pV9BFSYFSXyweD7ah/yAT
 xZV0TO1a9DZW932DuTgwmuWTTNEY8CNElLkYR5lE9wrumAeRx0gTa5CPnyhYU/DmS7hK
 DMQl9CXR02HdhWJP4K7hYK5uA3Kuvq5LKt1zq29utKIx+lOkN48Q4j+ejp4w0dyoJd4C
 t2dW4A4+n6OQBEjseZw565Q1fZXyZGdMg3yxI9VlEzh7C+uWnEP110ga8nIzTfPJcqld
 G8rg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUY3kGfC2flbEbY41XR5IkWIE1jBybsxjQ9+dwXM9R36xHQKeWihT0cT+PitJKNGR86UYoepzFcPTVl4GDmUSTKe7wjFvmXd7kOQMhBqBoH9gJUjt4=
X-Gm-Message-State: AOJu0Yzqo5C6Dw7t0lnDc54XyenXpnTiyt/cE53PFsZggbbbGssSTzg1
 xM+0qZUC4QQGl4R3ajHBgy3e5MOgeXZcNkp3EueB3IMu9KYlfqDhIYm3/5bhF5M=
X-Google-Smtp-Source: AGHT+IG1OfoSlbNP6r/gnEiYuSZ6k3yis8rT8lzbz98PqPAC3qFT045v5s+LJjbwN4N8VPZWUK2ptg==
X-Received: by 2002:a05:6a00:28cd:b0:6f6:94f7:49c0 with SMTP id
 d2e1a72fcca58-6f8f2d6a894mr12920821b3a.11.1716921112480; 
 Tue, 28 May 2024 11:31:52 -0700 (PDT)
Received: from localhost.localdomain ([47.238.252.167])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-6f8fd6d509fsm6729853b3a.218.2024.05.28.11.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 28 May 2024 11:31:52 -0700 (PDT)
To: shaggy@kernel.org,
	jfs-discussion@lists.sourceforge.net
Date: Wed, 29 May 2024 02:30:40 +0800
Message-Id: <20240528183040.17068-1-llfamsec@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Add a check before visiting the members of ea to make sure
 each ea stays within the ealist. Signed-off-by: lei lu --- fs/jfs/xattr.c
 | 23 +++++++++++++++++++---- 1 file changed, 19 insertions(+), 4 deletions(-)
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [llfamsec[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.170 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sC1cC-0005zO-1h
Subject: [Jfs-discussion] [PATCH v2] jfs: don't walk off the end of ealist
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
From: lei lu via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: lei lu <llfamsec@gmail.com>
Cc: lei lu <llfamsec@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Add a check before visiting the members of ea to
make sure each ea stays within the ealist.

Signed-off-by: lei lu <llfamsec@gmail.com>
---
 fs/jfs/xattr.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
index 0fb7afac298e..ab9b85ce7ff7 100644
--- a/fs/jfs/xattr.c
+++ b/fs/jfs/xattr.c
@@ -795,7 +795,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
 		       size_t buf_size)
 {
 	struct jfs_ea_list *ealist;
-	struct jfs_ea *ea;
+	struct jfs_ea *ea, *ealist_end;
 	struct ea_buffer ea_buf;
 	int xattr_size;
 	ssize_t size;
@@ -815,9 +815,16 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
 		goto not_found;
 
 	ealist = (struct jfs_ea_list *) ea_buf.xattr;
+	ealist_end = END_EALIST(ealist);
 
 	/* Find the named attribute */
-	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea))
+	for (ea = FIRST_EA(ealist); ea < ealist_end; ea = NEXT_EA(ea)) {
+		if (unlikely(ea + 1 > ealist_end) ||
+		    unlikely(NEXT_EA(ea) > ealist_end)) {
+			size = -EUCLEAN;
+			goto release;
+		}
+
 		if ((namelen == ea->namelen) &&
 		    memcmp(name, ea->name, namelen) == 0) {
 			/* Found it */
@@ -832,6 +839,7 @@ ssize_t __jfs_getxattr(struct inode *inode, const char *name, void *data,
 			memcpy(data, value, size);
 			goto release;
 		}
+	}
       not_found:
 	size = -ENODATA;
       release:
@@ -859,7 +867,7 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
 	ssize_t size = 0;
 	int xattr_size;
 	struct jfs_ea_list *ealist;
-	struct jfs_ea *ea;
+	struct jfs_ea *ea, *ealist_end;
 	struct ea_buffer ea_buf;
 
 	down_read(&JFS_IP(inode)->xattr_sem);
@@ -874,9 +882,16 @@ ssize_t jfs_listxattr(struct dentry * dentry, char *data, size_t buf_size)
 		goto release;
 
 	ealist = (struct jfs_ea_list *) ea_buf.xattr;
+	ealist_end = END_EALIST(ealist);
 
 	/* compute required size of list */
-	for (ea = FIRST_EA(ealist); ea < END_EALIST(ealist); ea = NEXT_EA(ea)) {
+	for (ea = FIRST_EA(ealist); ea < ealist_end; ea = NEXT_EA(ea)) {
+		if (unlikely(ea + 1 > ealist_end) ||
+		    unlikely(NEXT_EA(ea) > ealist_end)) {
+			size = -EUCLEAN;
+			goto release;
+		}
+
 		if (can_list(ea))
 			size += name_size(ea) + 1;
 	}
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
