Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0B57BE346
	for <lists+jfs-discussion@lfdr.de>; Mon,  9 Oct 2023 16:44:12 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qprUD-0000LH-I9;
	Mon, 09 Oct 2023 14:43:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qprUB-0000LA-Nf
 for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 14:43:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fp8oeCHkXnZ8PoMfDAewrEbM2hzEMNE0S/oIdHJqQHU=; b=iXfjR2AtRgGeBHw0y8Dnlmg2tJ
 WHZCFPC1S0rYTwdB1ctsz/n07+qaSXm68te6nFboZV0RgM5Kb5AsTFWbALJB0Ya+dIpA0Na3BVscu
 cgEAcb2FIMR5NnNK98SD+mGkayIkK8EPMAJMj8slPhju54KzbmM2c1N3UpbgYdqX3Xq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fp8oeCHkXnZ8PoMfDAewrEbM2hzEMNE0S/oIdHJqQHU=; b=eiDgVVJZteyPw6Fz6GtXynRu32
 BgpOhHXJ7voPhuKidG1hlumAsfrPQ9tDg8JNohtiDxdZun8z8UjFZOHSTS2QKkBH38M+gIhFa7Ymc
 0xrpOgzfJJS4NtvuW0MOF63k+NEr8FVIrzEfevLqsU9fNwgOQ5aJZSjuwYCvRv1t6luQ=;
Received: from mail-wm1-f46.google.com ([209.85.128.46])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qprU6-008Unf-TR for jfs-discussion@lists.sourceforge.net;
 Mon, 09 Oct 2023 14:43:54 +0000
Received: by mail-wm1-f46.google.com with SMTP id
 5b1f17b1804b1-40566f89f6eso46414215e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 09 Oct 2023 07:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1696862624; x=1697467424; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=fp8oeCHkXnZ8PoMfDAewrEbM2hzEMNE0S/oIdHJqQHU=;
 b=WSUJk8L0ZR35GKRs39nixSmsxfw76ftzL6R6CFfNYViPOPswBtLWgQKflO0ysatzbJ
 pWeVI3HHUmlSgnsfWEOplh7h7HZhWfbAinD4uqPgLzS5KSPc8xgPFF4newgpJ9vg30Hr
 GN+KDs1zGc4N6hYo/FItgR/JrrKbZFCCBYGMqyvenvmHMAUZX9Scg6wz8BP4jaDSy8He
 zvA5RDiSd+gb372W2dsx5xAEhnwi5CJYKlA0T1hUt1RwwXHWdqNoXz1kzgHsxsbGcghB
 nNKDP4GnTL80bWOXEhb6lKPiLqA9VU8rx2kXsRjB/Y3PAL3PjmIzxvGUGGYxKrYgLMf7
 oxvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696862624; x=1697467424;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=fp8oeCHkXnZ8PoMfDAewrEbM2hzEMNE0S/oIdHJqQHU=;
 b=pWk9hzO6qAQZJiuwxuVL6TZ6VevMjV1ln/oiC2zyGV1e+pckCLpr+iEOazb8aCUXJw
 FYWxkUCH0aByFV7O3yOJp3jvmPgaNt+Jh3ji5vUHWCunJX0obsdEPUNYoTWNYMeodPQO
 t2oBMM+pkcedEVbUWkMrzzrCKuCjnJ93XuG5NqNvySknxyUfFIui/fe00ZmVA4F7SdCe
 8BgTwf7Ah2qTNDqAr3zRQ3LNuNEUxUJqiSZy4qUtM06Tg8slm2XEuql+kS0equ+ka6JZ
 EArJ4mpJ0DUk5nsyI1p2g2fRp0z6WQh+EoUuoiUAtUkAYeV7W8xbRld2rQPH1D0S8A2l
 DMsw==
X-Gm-Message-State: AOJu0YwM1NgduLwZRJeJDcEgn76tlGCvMIK0lnWF06+z3RloGdYjWfHi
 iNLu+cr1vq6MSWAYQoZ8BH58zQ==
X-Google-Smtp-Source: AGHT+IFB1VcFZ4y7Snikt2+wlwEWsrBD1X8xjvYbCePNHvXgt5pS497npCfYbvtTbkx9mmpnSiyiPw==
X-Received: by 2002:a7b:c419:0:b0:402:f5c4:2e5a with SMTP id
 k25-20020a7bc419000000b00402f5c42e5amr13938953wmi.37.1696862624328; 
 Mon, 09 Oct 2023 07:43:44 -0700 (PDT)
Received: from heron.intern.cm-ag
 (p200300dc6f49a600529a4cfffe3dd983.dip0.t-ipconnect.de.
 [2003:dc:6f49:a600:529a:4cff:fe3d:d983])
 by smtp.gmail.com with ESMTPSA id
 n26-20020a05600c3b9a00b004068def185asm11433113wms.28.2023.10.09.07.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Oct 2023 07:43:44 -0700 (PDT)
To: Xiubo Li <xiubli@redhat.com>, Ilya Dryomov <idryomov@gmail.com>,
 Jeff Layton <jlayton@kernel.org>, Jan Kara <jack@suse.com>,
 Dave Kleikamp <shaggy@kernel.org>
Date: Mon,  9 Oct 2023 16:43:39 +0200
Message-Id: <20231009144340.418904-1-max.kellermann@ionos.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: One important implementation detail of the posix_acl_create()
 function is that it applies the umask to the "mode" parameter. If
 CONFIG_FS_POSIX_ACL
 is disabled, this detail is missing and the umask ma [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.46 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qprU6-008Unf-TR
Subject: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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

One important implementation detail of the posix_acl_create() function
is that it applies the umask to the "mode" parameter.  If
CONFIG_FS_POSIX_ACL is disabled, this detail is missing and the umask
may not get applied.

This patch adds the missing code to posix_acl_create() and to three
filesystems that omit the posix_acl_create() call if their individual
ACL support is disabled (CONFIG_EXT2_FS_POSIX_ACL,
CONFIG_JFS_POSIX_ACL, CONFIG_CEPH_FS_POSIX_ACL).  If
posix_acl_create() never gets called, the umask needs to be applied
anyway.

This bug used to be exploitable easily with O_TMPFILE (see
https://bugzilla.kernel.org/show_bug.cgi?id=203625) but that part was
fixed by commit ac6800e279a2 ("fs: Add missing umask strip in
vfs_tmpfile") last year.  The bug may not be reachable by userspace
anymore, but since it is apparently still necessary to apply the umask
again in posix_acl_create(), there is no reason to assume it's not
necessary with ACL support is disabled.

Signed-off-by: Max Kellermann <max.kellermann@ionos.com>
---
 fs/ceph/super.h           | 6 ++++++
 fs/ext2/acl.h             | 6 ++++++
 fs/jfs/jfs_acl.h          | 6 ++++++
 include/linux/posix_acl.h | 1 +
 4 files changed, 19 insertions(+)

diff --git a/fs/ceph/super.h b/fs/ceph/super.h
index 51c7f2b14f6f..58349639bd57 100644
--- a/fs/ceph/super.h
+++ b/fs/ceph/super.h
@@ -1194,6 +1194,12 @@ static inline void ceph_forget_all_cached_acls(struct inode *inode)
 static inline int ceph_pre_init_acls(struct inode *dir, umode_t *mode,
 				     struct ceph_acl_sec_ctx *as_ctx)
 {
+	/* usually, the umask is applied by posix_acl_create(), but if
+	 * ACL support is disabled at compile time, we need to do it
+	 * here, because posix_acl_create() will never be called
+	 */
+	*mode &= ~current_umask();
+
 	return 0;
 }
 static inline void ceph_init_inode_acls(struct inode *inode,
diff --git a/fs/ext2/acl.h b/fs/ext2/acl.h
index 4a8443a2b8ec..0ecaa9c20c0c 100644
--- a/fs/ext2/acl.h
+++ b/fs/ext2/acl.h
@@ -67,6 +67,12 @@ extern int ext2_init_acl (struct inode *, struct inode *);
 
 static inline int ext2_init_acl (struct inode *inode, struct inode *dir)
 {
+	/* usually, the umask is applied by posix_acl_create(), but if
+	 * ACL support is disabled at compile time, we need to do it
+	 * here, because posix_acl_create() will never be called
+	 */
+	inode->i_mode &= ~current_umask();
+
 	return 0;
 }
 #endif
diff --git a/fs/jfs/jfs_acl.h b/fs/jfs/jfs_acl.h
index f892e54d0fcd..64a05e663a45 100644
--- a/fs/jfs/jfs_acl.h
+++ b/fs/jfs/jfs_acl.h
@@ -17,6 +17,12 @@ int jfs_init_acl(tid_t, struct inode *, struct inode *);
 static inline int jfs_init_acl(tid_t tid, struct inode *inode,
 			       struct inode *dir)
 {
+	/* usually, the umask is applied by posix_acl_create(), but if
+	 * ACL support is disabled at compile time, we need to do it
+	 * here, because posix_acl_create() will never be called
+	 */
+	inode->i_mode &= ~current_umask();
+
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
