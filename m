Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B3A767A65A6
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Sep 2023 15:47:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qib4S-0002Bw-En;
	Tue, 19 Sep 2023 13:47:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qiWHA-0008WP-BA
 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 08:40:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=uQ3b5XDPJFH4ZPU40U25cW209fS7oBevnKSE6H0Fn+w=; b=fVbym3ya0laM0mGrSYptjJIgdO
 hbUV9di2ujc3hQtg4ym0q3N4Z/9qyhKe3CpxBfqPDBFuUpXh7QVGul/AQ03IylogZW3tSQBtgCQwm
 e8i7Y7WJsMvrLh2rN8h6hNmiwgY9SvFYoKytvPQPTMAlCi1PmHAosMan6Z6HhAGT1mvs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=uQ3b5XDPJFH4ZPU40U25cW209fS7oBevnKSE6H0Fn+w=; b=C
 GwMnHrQuL6mOe0uLIqza4Dl6HHOTX7RLk9GBqibg/dtJP8RGZyM9cbWZX0ylkVWcBAzlviEOiv4NW
 UnOFcysE2sJUZe8WMAZi0wWGTvBaFF09WTbk72OkhrYvomH0g5arS6lq8WirNNBKV9FHnaztQBFEP
 LHL4r05I1KkKjpXI=;
Received: from mail-wm1-f52.google.com ([209.85.128.52])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qiWH4-00ENGF-Ex for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 08:40:08 +0000
Received: by mail-wm1-f52.google.com with SMTP id
 5b1f17b1804b1-402d0eda361so58695735e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 19 Sep 2023 01:40:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1695112796; x=1695717596; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=uQ3b5XDPJFH4ZPU40U25cW209fS7oBevnKSE6H0Fn+w=;
 b=F9nqBNTwCqM3WNHTiDhkBvPBYwlmv3EXwZEmwkueOcY1mrIomuF7VitqqJjtEr2n3O
 dW24qlSSftZeRUuLPRgCsuQcPU7pH8FuJMGQfAlij0iqhYtlseTgwkgJQfAQHQgOD1gN
 6hhFbR53TSkSyBB5w/9OVomzmr4/+9lN4M43HNT+Yr+wEyAEEJzczgfgqi/mx5n2lcxu
 9RfeRhb9SahD3EA7Wjg8f1yNpp0Tg6p04x+mTVVvoLRCDCEZ6LxeYH9esgz/E0Bw2V6O
 8d3vFGWPx6DxpPYVAH99LDe5N9KGzwqmC6qRENU0a6s8ZJ0K7qqp4VkkGfX9fRr9QNrB
 2Y3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695112796; x=1695717596;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=uQ3b5XDPJFH4ZPU40U25cW209fS7oBevnKSE6H0Fn+w=;
 b=Y+n/QV7w88oQKb3LlAs9mz5oRkcfmXbXErKbaDSf0OTI+xSDescYqmNuaAEBKk2PNp
 SX2rbk4OXPgi1Csra7Ew50BMMktiOL1rFdd78xadVugfvhlTgpOl74A/nDj7qFYIVqGo
 jRytNHOsl4s9eOJUIWOMnxSVUGMTzSm2Z0dcf5iZfRa5HeyRs0BIzKA2iaeXAm7UTRM5
 snnKHYiPZixRe8sR3o/rzXAxywttKutspYoK4KyBH/XNEt2PQgvoT73qWcM5xf7BNUJJ
 dVMxJwZNbI46rI+k4BKNh3IyCIHcbj9ObRWEdqEa/43NNibNMNDC14gjQyP1w7Ode4pE
 GGmQ==
X-Gm-Message-State: AOJu0YxrF2PI3mCWrjFg0mtRM9JrPG5a3jIvy22al66PRTeKQFNod7MB
 liIXEYYoeuK0ko6+FddtGJYU8srskltQtNFF53h4LQ==
X-Google-Smtp-Source: AGHT+IHklgOzUf9luSSlKnZeygLJj0Nt/0Wm4ps2AhD3B7IuMCckbwf6QblDuTUO9BIOKq3Oel6UOQ==
X-Received: by 2002:a7b:ca4a:0:b0:401:c297:affb with SMTP id
 m10-20020a7bca4a000000b00401c297affbmr10412073wml.37.1695111543658; 
 Tue, 19 Sep 2023 01:19:03 -0700 (PDT)
Received: from heron.intern.cm-ag
 (p200300dc6f209c00529a4cfffe3dd983.dip0.t-ipconnect.de.
 [2003:dc:6f20:9c00:529a:4cff:fe3d:d983])
 by smtp.gmail.com with ESMTPSA id
 i10-20020a5d558a000000b003141e629cb6sm14762549wrv.101.2023.09.19.01.19.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Sep 2023 01:19:02 -0700 (PDT)
To: Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>
Date: Tue, 19 Sep 2023 10:18:59 +0200
Message-Id: <20230919081900.1096840-1-max.kellermann@ionos.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Signed-off-by: Max Kellermann <max.kellermann@ionos.com> ---
 fs/ceph/super.h | 1 + fs/ext2/acl.h | 1 + fs/jfs/jfs_acl.h | 1 +
 include/linux/posix_acl.h | 1 + 4 files changed,
 4 insertions(+) diff --git a/fs/ceph/super.h b/fs/ceph/super.h
 index 51c7f2b14f6f..e7e2f264acf4 100644 --- a/fs/ceph/super.h +++
 b/fs/ceph/super.h
 @@ -1194,6 +1194,7 @@ static inline void ceph_forget_all_cached_acls( [...]
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.52 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.52 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1qiWH4-00ENGF-Ex
X-Mailman-Approved-At: Tue, 19 Sep 2023 13:47:17 +0000
Subject: [Jfs-discussion] [PATCH] fs: apply umask if POSIX ACL support is
 disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: Max Kellermann <max.kellermann@ionos.com>, linux-ext4@vger.kernel.org,
 ceph-devel@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
---
 fs/ceph/super.h           | 1 +
 fs/ext2/acl.h             | 1 +
 fs/jfs/jfs_acl.h          | 1 +
 include/linux/posix_acl.h | 1 +
 4 files changed, 4 insertions(+)

diff --git a/fs/ceph/super.h b/fs/ceph/super.h
index 51c7f2b14f6f..e7e2f264acf4 100644
--- a/fs/ceph/super.h
+++ b/fs/ceph/super.h
@@ -1194,6 +1194,7 @@ static inline void ceph_forget_all_cached_acls(struct inode *inode)
 static inline int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
 				     struct ceph_acl_sec_ctx *as_ctx)
 {
+	*mode &= ~current_umask();
 	return 0;
 }
 static inline void ceph_init_inode_acls(struct inode *inode,
diff --git a/fs/ext2/acl.h b/fs/ext2/acl.h
index 4a8443a2b8ec..694af789c614 100644
--- a/fs/ext2/acl.h
+++ b/fs/ext2/acl.h
@@ -67,6 +67,7 @@ extern int ext2_init_acl (struct inode *, struct inode *);
 
 static inline int ext2_init_acl (struct inode *inode, struct inode *dir)
 {
+	inode->i_mode &= ~current_umask();
 	return 0;
 }
 #endif
diff --git a/fs/jfs/jfs_acl.h b/fs/jfs/jfs_acl.h
index f892e54d0fcd..10791e97a46f 100644
--- a/fs/jfs/jfs_acl.h
+++ b/fs/jfs/jfs_acl.h
@@ -17,6 +17,7 @@ int jfs_init_acl(tid_t, struct inode *, struct inode *);
 static inline int jfs_init_acl(tid_t tid, struct inode *inode,
 			       struct inode *dir)
 {
+	inode->i_mode &= ~current_umask();
 	return 0;
 }
 
diff --git a/include/linux/posix_acl.h b/include/linux/posix_acl.h
index 0e65b3d634d9..54bc9b1061ca 100644
--- a/include/linux/posix_acl.h
+++ b/include/linux/posix_acl.h
@@ -128,6 +128,7 @@ static inline void cache_no_acl(struct inode *inode)
 static inline int posix_acl_create(struct inode *inode, umode_t *mode,
 		struct posix_acl **default_acl, struct posix_acl **acl)
 {
+	*mode &= ~current_umask();
 	*default_acl = *acl = NULL;
 	return 0;
 }
-- 
2.39.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
