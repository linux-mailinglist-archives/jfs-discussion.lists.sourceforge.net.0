Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B16B98783D
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Sep 2024 19:23:25 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1stsCZ-0001QF-Nv;
	Thu, 26 Sep 2024 17:22:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <sandeen@redhat.com>) id 1stsAC-0001N8-P8
 for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Sep 2024 17:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Content-Transfer-Encoding:MIME-Version
 :Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oop+bhL4/ijqIouR48YA2VOGEVRfugmnS3kDSL+iRvM=; b=Tm5wDLGew9WwZxRXCHrd5s3cpG
 RFR9za+Zjv5PcFJWeI6ewGzS5lpQcGkv5jIaFQzu+Cr/R5x4dAmsZg+Y5KFwTRI6ubwkmHpbmeTT5
 D1v15HA24Igt2G/lihPGOvCY2xTLMJlRJmQL7/nNdt4yhuk6khMqJCFFt0Izgxveqr5w=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=oop+bhL4/ijqIouR48YA2VOGEVRfugmnS3kDSL+iRvM=; b=L
 LJy9yu4tdjTxxmuQR9KjIIQPDTxs6F9EroyY/3k4NysevEXjeM2Rda52rXy+3NSy/Ka41xyQxMV0/
 J9hcdSXOpIUszMhv5R0EJxmOVXd0F6GmLFrBS+EupB3XuI8v2PSxrsaoxxw+fdT6vpBTaO+Vh2wFs
 JX4E3x6bm8zSIlxY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1stsAB-0002Bx-9f for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Sep 2024 17:20:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1727371216;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding;
 bh=oop+bhL4/ijqIouR48YA2VOGEVRfugmnS3kDSL+iRvM=;
 b=M/P7cDQDg3AiDyd/xxVqUh2wRDBAR1K33Z1azHafqMj5YJhsK3vvRVE+8v6KVZCNTp+1/Y
 Y2Dy/ZQAVH6E7k7NfjzEhBkOKOwjnshBaqPxeKn76oa7f1NmJbxKVPR7KDNXAbwx2dm2q9
 oCGXLRIFjBuqn/+GvIaFyCgIDIT7LyE=
Received: from mail-io1-f71.google.com (mail-io1-f71.google.com
 [209.85.166.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-426-cu550k-2NyO0pI5sQO3h3w-1; Thu, 26 Sep 2024 13:20:15 -0400
X-MC-Unique: cu550k-2NyO0pI5sQO3h3w-1
Received: by mail-io1-f71.google.com with SMTP id
 ca18e2360f4ac-82aa94d4683so138302039f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 26 Sep 2024 10:20:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727371215; x=1727976015;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=oop+bhL4/ijqIouR48YA2VOGEVRfugmnS3kDSL+iRvM=;
 b=tpeYur+fx7NXUC77gtBDVolO03OSncsyoyixiD8HIbkg48mmLT0gpDu9w8idOH8C52
 0v9U3Ih7biynRbK+umRI16Z9rf2F7gLaZ/HPie9ygv23k9Rqp1OCNpQZsPxylWghGpGM
 JEyb7bXZEFbR71+v4rPKfPuhFiDXpYqnS85otFqfg03lzG0FcY4UIn/Jonf0fqswbShD
 CyQZIXiiMKa7DQt5cMdAFhfsIcbDpANZ9UgR4h6DJsf7xVwbubNcW7yenj8+zsVtmY8a
 xxShL+VGWGJTa9yyZuRelDK6brGrfBxSz/PJkzKPyma607r6B38hPzVu/aOrzaytYkKe
 4VSw==
X-Gm-Message-State: AOJu0YzIp9Wtw9h5q2giXc4eCPi0f70wVFGwsj1UVncIbgp8jBREt2kg
 u2vRy1K47ThYohbsIHoQI6OZrOvv6QZfS4jMcVzpd6P4mTifrHAgdO/aAt7pylDINXvOYS1L7FE
 00IuWDku7QKjh8ujwBzpjeGNTcZAZPTWxwcZMMIb14arW+HL9bVaB3dvQNpo9vHm7PqzQ8hp5a/
 Zu1eSSKsa8uFu/AmCnDuFNc4CWjh15Wtc2n5py03LhWl9Aj9dj4tCQDqg=
X-Received: by 2002:a05:6602:2c06:b0:82a:a43f:5bcc with SMTP id
 ca18e2360f4ac-834931e6769mr57559539f.7.1727371214506; 
 Thu, 26 Sep 2024 10:20:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGCPuURKAJjTvaFOJ7iDRd7G9SW6o/I20x8Y+OPTaZqBSJ1tyhTvi1lStHxowxSRgM+C9JHOw==
X-Received: by 2002:a05:6602:2c06:b0:82a:a43f:5bcc with SMTP id
 ca18e2360f4ac-834931e6769mr57556139f.7.1727371214007; 
 Thu, 26 Sep 2024 10:20:14 -0700 (PDT)
Received: from fedora-rawhide.sandeen.net (67-4-202-127.mpls.qwest.net.
 [67.4.202.127]) by smtp.gmail.com with ESMTPSA id
 8926c6da1cb9f-4d8888c2c18sm46986173.91.2024.09.26.10.20.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2024 10:20:13 -0700 (PDT)
To: jfs-discussion@lists.sourceforge.net
Date: Thu, 26 Sep 2024 12:19:46 -0500
Message-ID: <20240926171947.682881-1-sandeen@redhat.com>
X-Mailer: git-send-email 2.46.0
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
X-Spam-Score: -0.3 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Convert the jfs filesystem to use the new mount API. Tested
 by comparing random mount & remount options before and after the change.
 Signed-off-by: Eric Sandeen <sandeen@redhat.com> --- fs/jfs/jfs_filsys.h |
 1 + fs/jfs/super.c | 469 +++++++++++++++++++++++ 2 files changed,
 247 insertions(+), 223 deletions(-) 
 Content analysis details:   (-0.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1stsAB-0002Bx-9f
X-Mailman-Approved-At: Thu, 26 Sep 2024 17:22:50 +0000
Subject: [Jfs-discussion] [PATCH] jfs: convert jfs to use the new mount api
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
From: Eric Sandeen via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Eric Sandeen <sandeen@redhat.com>
Cc: shaggy@kernel.org, brauner@kernel.org, Eric Sandeen <sandeen@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Convert the jfs filesystem to use the new mount API.
Tested by comparing random mount & remount options before and after
the change.

Signed-off-by: Eric Sandeen <sandeen@redhat.com>
---
 fs/jfs/jfs_filsys.h |   1 +
 fs/jfs/super.c      | 469 +++++++++++++++++++++++---------------------
 2 files changed, 247 insertions(+), 223 deletions(-)

diff --git a/fs/jfs/jfs_filsys.h b/fs/jfs/jfs_filsys.h
index 33ef13a0b110..8794281f8ffd 100644
--- a/fs/jfs/jfs_filsys.h
+++ b/fs/jfs/jfs_filsys.h
@@ -24,6 +24,7 @@
 #define JFS_ERR_REMOUNT_RO 0x00000002	/* remount read-only */
 #define JFS_ERR_CONTINUE   0x00000004	/* continue */
 #define JFS_ERR_PANIC      0x00000008	/* panic */
+#define JFS_ERR_MASK	   (JFS_ERR_REMOUNT_RO|JFS_ERR_CONTINUE|JFS_ERR_PANIC)
 
 /* Quota support */
 #define	JFS_USRQUOTA	0x00000010
diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index e1be21ca5d6e..223d9ac59839 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -6,11 +6,11 @@
 
 #include <linux/fs.h>
 #include <linux/module.h>
-#include <linux/parser.h>
 #include <linux/completion.h>
 #include <linux/vfs.h>
 #include <linux/quotaops.h>
-#include <linux/mount.h>
+#include <linux/fs_context.h>
+#include <linux/fs_parser.h>
 #include <linux/moduleparam.h>
 #include <linux/kthread.h>
 #include <linux/posix_acl.h>
@@ -210,240 +210,195 @@ enum {
 	Opt_discard, Opt_nodiscard, Opt_discard_minblk
 };
 
-static const match_table_t tokens = {
-	{Opt_integrity, "integrity"},
-	{Opt_nointegrity, "nointegrity"},
-	{Opt_iocharset, "iocharset=%s"},
-	{Opt_resize, "resize=%u"},
-	{Opt_resize_nosize, "resize"},
-	{Opt_errors, "errors=%s"},
-	{Opt_ignore, "noquota"},
-	{Opt_quota, "quota"},
-	{Opt_usrquota, "usrquota"},
-	{Opt_grpquota, "grpquota"},
-	{Opt_uid, "uid=%u"},
-	{Opt_gid, "gid=%u"},
-	{Opt_umask, "umask=%u"},
-	{Opt_discard, "discard"},
-	{Opt_nodiscard, "nodiscard"},
-	{Opt_discard_minblk, "discard=%u"},
-	{Opt_err, NULL}
+static const struct constant_table jfs_param_errors[] = {
+	{"continue",	JFS_ERR_CONTINUE},
+	{"remount-ro",	JFS_ERR_REMOUNT_RO},
+	{"panic",	JFS_ERR_PANIC},
+	{}
 };
 
-static int parse_options(char *options, struct super_block *sb, s64 *newLVSize,
-			 int *flag)
-{
-	void *nls_map = (void *)-1;	/* -1: no change;  NULL: none */
-	char *p;
-	struct jfs_sb_info *sbi = JFS_SBI(sb);
+static const struct fs_parameter_spec jfs_param_spec[] = {
+	fsparam_flag_no	("integrity",	Opt_integrity),
+	fsparam_string	("iocharset",	Opt_iocharset),
+	fsparam_u64	("resize",	Opt_resize),
+	fsparam_flag	("resize",	Opt_resize_nosize),
+	fsparam_enum	("errors",	Opt_errors,	jfs_param_errors),
+	fsparam_flag	("quota",	Opt_quota),
+	fsparam_flag	("noquota",	Opt_ignore),
+	fsparam_flag	("usrquota",	Opt_usrquota),
+	fsparam_flag	("grpquota",	Opt_grpquota),
+	fsparam_uid	("uid",		Opt_uid),
+	fsparam_gid	("gid",		Opt_gid),
+	fsparam_u32oct	("umask",	Opt_umask),
+	fsparam_flag	("discard",	Opt_discard),
+	fsparam_u32	("discard",	Opt_discard_minblk),
+	fsparam_flag	("nodiscard",	Opt_nodiscard),
+	{}
+};
 
-	*newLVSize = 0;
-
-	if (!options)
-		return 1;
-
-	while ((p = strsep(&options, ",")) != NULL) {
-		substring_t args[MAX_OPT_ARGS];
-		int token;
-		if (!*p)
-			continue;
-
-		token = match_token(p, tokens, args);
-		switch (token) {
-		case Opt_integrity:
-			*flag &= ~JFS_NOINTEGRITY;
-			break;
-		case Opt_nointegrity:
-			*flag |= JFS_NOINTEGRITY;
-			break;
-		case Opt_ignore:
-			/* Silently ignore the quota options */
-			/* Don't do anything ;-) */
-			break;
-		case Opt_iocharset:
-			if (nls_map && nls_map != (void *) -1)
-				unload_nls(nls_map);
-			if (!strcmp(args[0].from, "none"))
-				nls_map = NULL;
-			else {
-				nls_map = load_nls(args[0].from);
-				if (!nls_map) {
-					pr_err("JFS: charset not found\n");
-					goto cleanup;
-				}
-			}
-			break;
-		case Opt_resize:
-		{
-			char *resize = args[0].from;
-			int rc = kstrtoll(resize, 0, newLVSize);
+struct jfs_context {
+	int	flag;
+	kuid_t	uid;
+	kgid_t	gid;
+	uint	umask;
+	uint	minblks_trim;
+	void	*nls_map;
+	bool	resize;
+	s64	newLVSize;
+};
 
-			if (rc)
-				goto cleanup;
-			break;
-		}
-		case Opt_resize_nosize:
-		{
-			*newLVSize = sb_bdev_nr_blocks(sb);
-			if (*newLVSize == 0)
-				pr_err("JFS: Cannot determine volume size\n");
-			break;
+static int jfs_parse_param(struct fs_context *fc, struct fs_parameter *param)
+{
+	struct jfs_context *ctx = fc->fs_private;
+	int reconfigure = (fc->purpose == FS_CONTEXT_FOR_RECONFIGURE);
+	struct fs_parse_result result;
+	struct nls_table *nls_map;
+	int opt;
+
+	opt = fs_parse(fc, jfs_param_spec, param, &result);
+	if (opt < 0)
+		return opt;
+
+	switch (opt) {
+	case Opt_integrity:
+		if (result.negated)
+			ctx->flag |= JFS_NOINTEGRITY;
+		else
+			ctx->flag &= ~JFS_NOINTEGRITY;
+		break;
+	case Opt_ignore:
+		/* Silently ignore the quota options */
+		/* Don't do anything ;-) */
+		break;
+	case Opt_iocharset:
+		if (ctx->nls_map && ctx->nls_map != (void *) -1) {
+			unload_nls(ctx->nls_map);
+			ctx->nls_map = NULL;
 		}
-		case Opt_errors:
-		{
-			char *errors = args[0].from;
-			if (!errors || !*errors)
-				goto cleanup;
-			if (!strcmp(errors, "continue")) {
-				*flag &= ~JFS_ERR_REMOUNT_RO;
-				*flag &= ~JFS_ERR_PANIC;
-				*flag |= JFS_ERR_CONTINUE;
-			} else if (!strcmp(errors, "remount-ro")) {
-				*flag &= ~JFS_ERR_CONTINUE;
-				*flag &= ~JFS_ERR_PANIC;
-				*flag |= JFS_ERR_REMOUNT_RO;
-			} else if (!strcmp(errors, "panic")) {
-				*flag &= ~JFS_ERR_CONTINUE;
-				*flag &= ~JFS_ERR_REMOUNT_RO;
-				*flag |= JFS_ERR_PANIC;
-			} else {
-				pr_err("JFS: %s is an invalid error handler\n",
-				       errors);
-				goto cleanup;
+		if (!strcmp(param->string, "none"))
+			ctx->nls_map = NULL;
+		else {
+			nls_map = load_nls(param->string);
+			if (!nls_map) {
+				pr_err("JFS: charset not found\n");
+				return -EINVAL;
 			}
-			break;
+			ctx->nls_map = nls_map;
 		}
+		break;
+	case Opt_resize:
+		if (!reconfigure)
+			return -EINVAL;
+		ctx->resize = true;
+		ctx->newLVSize = result.uint_64;
+		break;
+	case Opt_resize_nosize:
+		if (!reconfigure)
+			return -EINVAL;
+		ctx->resize = true;
+		break;
+	case Opt_errors:
+		ctx->flag &= ~JFS_ERR_MASK;
+		ctx->flag |= result.uint_32;
+		break;
 
 #ifdef CONFIG_QUOTA
-		case Opt_quota:
-		case Opt_usrquota:
-			*flag |= JFS_USRQUOTA;
-			break;
-		case Opt_grpquota:
-			*flag |= JFS_GRPQUOTA;
-			break;
+	case Opt_quota:
+	case Opt_usrquota:
+		ctx->flag |= JFS_USRQUOTA;
+		break;
+	case Opt_grpquota:
+		ctx->flag |= JFS_GRPQUOTA;
+		break;
 #else
-		case Opt_usrquota:
-		case Opt_grpquota:
-		case Opt_quota:
-			pr_err("JFS: quota operations not supported\n");
-			break;
+	case Opt_usrquota:
+	case Opt_grpquota:
+	case Opt_quota:
+		pr_err("JFS: quota operations not supported\n");
+		break;
 #endif
-		case Opt_uid:
-		{
-			char *uid = args[0].from;
-			uid_t val;
-			int rc = kstrtouint(uid, 0, &val);
-
-			if (rc)
-				goto cleanup;
-			sbi->uid = make_kuid(current_user_ns(), val);
-			if (!uid_valid(sbi->uid))
-				goto cleanup;
-			break;
-		}
-
-		case Opt_gid:
-		{
-			char *gid = args[0].from;
-			gid_t val;
-			int rc = kstrtouint(gid, 0, &val);
-
-			if (rc)
-				goto cleanup;
-			sbi->gid = make_kgid(current_user_ns(), val);
-			if (!gid_valid(sbi->gid))
-				goto cleanup;
-			break;
+	case Opt_uid:
+		ctx->uid = result.uid;
+		break;
+
+	case Opt_gid:
+		ctx->gid = result.gid;
+		break;
+
+	case Opt_umask:
+		if (result.uint_32 & ~0777) {
+			pr_err("JFS: Invalid value of umask\n");
+			return -EINVAL;
 		}
+		ctx->umask = result.uint_32;
+		break;
 
-		case Opt_umask:
-		{
-			char *umask = args[0].from;
-			int rc = kstrtouint(umask, 8, &sbi->umask);
+	case Opt_discard:
+		/* if set to 1, even copying files will cause
+		 * trimming :O
+		 * -> user has more control over the online trimming
+		 */
+		ctx->minblks_trim = 64;
+		ctx->flag |= JFS_DISCARD;
+		break;
 
-			if (rc)
-				goto cleanup;
-			if (sbi->umask & ~0777) {
-				pr_err("JFS: Invalid value of umask\n");
-				goto cleanup;
-			}
-			break;
-		}
+	case Opt_nodiscard:
+		ctx->flag &= ~JFS_DISCARD;
+		break;
 
-		case Opt_discard:
-			/* if set to 1, even copying files will cause
-			 * trimming :O
-			 * -> user has more control over the online trimming
-			 */
-			sbi->minblks_trim = 64;
-			if (bdev_max_discard_sectors(sb->s_bdev))
-				*flag |= JFS_DISCARD;
-			else
-				pr_err("JFS: discard option not supported on device\n");
-			break;
-
-		case Opt_nodiscard:
-			*flag &= ~JFS_DISCARD;
-			break;
-
-		case Opt_discard_minblk:
-		{
-			char *minblks_trim = args[0].from;
-			int rc;
-			if (bdev_max_discard_sectors(sb->s_bdev)) {
-				*flag |= JFS_DISCARD;
-				rc = kstrtouint(minblks_trim, 0,
-						&sbi->minblks_trim);
-				if (rc)
-					goto cleanup;
-			} else
-				pr_err("JFS: discard option not supported on device\n");
-			break;
-		}
+	case Opt_discard_minblk:
+		ctx->minblks_trim = result.uint_32;
+		ctx->flag |= JFS_DISCARD;
+		break;
 
-		default:
-			printk("jfs: Unrecognized mount option \"%s\" or missing value\n",
-			       p);
-			goto cleanup;
-		}
-	}
-
-	if (nls_map != (void *) -1) {
-		/* Discard old (if remount) */
-		unload_nls(sbi->nls_tab);
-		sbi->nls_tab = nls_map;
+	default:
+		return -EINVAL;
 	}
-	return 1;
 
-cleanup:
-	if (nls_map && nls_map != (void *) -1)
-		unload_nls(nls_map);
 	return 0;
 }
 
-static int jfs_remount(struct super_block *sb, int *flags, char *data)
+static int jfs_reconfigure(struct fs_context *fc)
 {
-	s64 newLVSize = 0;
+	struct jfs_context *ctx = fc->fs_private;
+	struct super_block *sb = fc->root->d_sb;
+	int readonly = fc->sb_flags & SB_RDONLY;
 	int rc = 0;
-	int flag = JFS_SBI(sb)->flag;
+	int flag = ctx->flag;
 	int ret;
 
 	sync_filesystem(sb);
-	if (!parse_options(data, sb, &newLVSize, &flag))
-		return -EINVAL;
 
-	if (newLVSize) {
+	/* Transfer results of parsing to the sbi */
+	JFS_SBI(sb)->flag = ctx->flag;
+	JFS_SBI(sb)->uid = ctx->uid;
+	JFS_SBI(sb)->gid = ctx->gid;
+	JFS_SBI(sb)->umask = ctx->umask;
+	JFS_SBI(sb)->minblks_trim = ctx->minblks_trim;
+	if (ctx->nls_map != (void *) -1) {
+		unload_nls(JFS_SBI(sb)->nls_tab);
+		JFS_SBI(sb)->nls_tab = ctx->nls_map;
+	}
+	ctx->nls_map = NULL;
+
+	if (ctx->resize) {
 		if (sb_rdonly(sb)) {
 			pr_err("JFS: resize requires volume to be mounted read-write\n");
 			return -EROFS;
 		}
-		rc = jfs_extendfs(sb, newLVSize, 0);
+
+		if (!ctx->newLVSize) {
+			ctx->newLVSize = sb_bdev_nr_blocks(sb);
+				if (ctx->newLVSize == 0)
+					pr_err("JFS: Cannot determine volume size\n");
+		}
+
+		rc = jfs_extendfs(sb, ctx->newLVSize, 0);
 		if (rc)
 			return rc;
 	}
 
-	if (sb_rdonly(sb) && !(*flags & SB_RDONLY)) {
+	if (sb_rdonly(sb) && !readonly) {
 		/*
 		 * Invalidate any previously read metadata.  fsck may have
 		 * changed the on-disk data since we mounted r/o
@@ -459,7 +414,7 @@ static int jfs_remount(struct super_block *sb, int *flags, char *data)
 		dquot_resume(sb, -1);
 		return ret;
 	}
-	if (!sb_rdonly(sb) && (*flags & SB_RDONLY)) {
+	if (!sb_rdonly(sb) && readonly) {
 		rc = dquot_suspend(sb, -1);
 		if (rc < 0)
 			return rc;
@@ -467,7 +422,7 @@ static int jfs_remount(struct super_block *sb, int *flags, char *data)
 		JFS_SBI(sb)->flag = flag;
 		return rc;
 	}
-	if ((JFS_SBI(sb)->flag & JFS_NOINTEGRITY) != (flag & JFS_NOINTEGRITY))
+	if ((JFS_SBI(sb)->flag & JFS_NOINTEGRITY) != (flag & JFS_NOINTEGRITY)) {
 		if (!sb_rdonly(sb)) {
 			rc = jfs_umount_rw(sb);
 			if (rc)
@@ -477,18 +432,20 @@ static int jfs_remount(struct super_block *sb, int *flags, char *data)
 			ret = jfs_mount_rw(sb, 1);
 			return ret;
 		}
+	}
 	JFS_SBI(sb)->flag = flag;
 
 	return 0;
 }
 
-static int jfs_fill_super(struct super_block *sb, void *data, int silent)
+static int jfs_fill_super(struct super_block *sb, struct fs_context *fc)
 {
+	struct jfs_context *ctx = fc->fs_private;
+	int silent = fc->sb_flags & SB_SILENT;
 	struct jfs_sb_info *sbi;
 	struct inode *inode;
 	int rc;
-	s64 newLVSize = 0;
-	int flag, ret = -EINVAL;
+	int ret = -EINVAL;
 
 	jfs_info("In jfs_read_super: s_flags=0x%lx", sb->s_flags);
 
@@ -501,24 +458,34 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
 	sb->s_time_min = 0;
 	sb->s_time_max = U32_MAX;
 	sbi->sb = sb;
-	sbi->uid = INVALID_UID;
-	sbi->gid = INVALID_GID;
-	sbi->umask = -1;
-
-	/* initialize the mount flag and determine the default error handler */
-	flag = JFS_ERR_REMOUNT_RO;
 
-	if (!parse_options((char *) data, sb, &newLVSize, &flag))
-		goto out_kfree;
-	sbi->flag = flag;
+	/* Transfer results of parsing to the sbi */
+	sbi->flag = ctx->flag;
+	sbi->uid = ctx->uid;
+	sbi->gid = ctx->gid;
+	sbi->umask = ctx->umask;
+	if (ctx->nls_map != (void *) -1) {
+		unload_nls(sbi->nls_tab);
+		sbi->nls_tab = ctx->nls_map;
+	}
+	ctx->nls_map = NULL;
+
+	if (sbi->flag & JFS_DISCARD) {
+		if (!bdev_max_discard_sectors(sb->s_bdev)) {
+			pr_err("JFS: discard option not supported on device\n");
+			sbi->flag &= ~JFS_DISCARD;
+		} else {
+			sbi->minblks_trim = ctx->minblks_trim;
+		}
+	}
 
 #ifdef CONFIG_JFS_POSIX_ACL
 	sb->s_flags |= SB_POSIXACL;
 #endif
 
-	if (newLVSize) {
+	if (ctx->resize) {
 		pr_err("resize option for remount only\n");
-		goto out_kfree;
+		goto out_unload;
 	}
 
 	/*
@@ -608,7 +575,6 @@ static int jfs_fill_super(struct super_block *sb, void *data, int silent)
 	sbi->direct_inode = NULL;
 out_unload:
 	unload_nls(sbi->nls_tab);
-out_kfree:
 	kfree(sbi);
 	return ret;
 }
@@ -664,10 +630,9 @@ static int jfs_unfreeze(struct super_block *sb)
 	return rc;
 }
 
-static struct dentry *jfs_do_mount(struct file_system_type *fs_type,
-	int flags, const char *dev_name, void *data)
+static int jfs_get_tree(struct fs_context *fc)
 {
-	return mount_bdev(fs_type, flags, dev_name, data, jfs_fill_super);
+	return get_tree_bdev(fc, jfs_fill_super);
 }
 
 static int jfs_sync_fs(struct super_block *sb, int wait)
@@ -886,7 +851,6 @@ static const struct super_operations jfs_super_operations = {
 	.freeze_fs	= jfs_freeze,
 	.unfreeze_fs	= jfs_unfreeze,
 	.statfs		= jfs_statfs,
-	.remount_fs	= jfs_remount,
 	.show_options	= jfs_show_options,
 #ifdef CONFIG_QUOTA
 	.quota_read	= jfs_quota_read,
@@ -902,12 +866,71 @@ static const struct export_operations jfs_export_operations = {
 	.get_parent	= jfs_get_parent,
 };
 
+static void jfs_init_options(struct fs_context *fc, struct jfs_context *ctx)
+{
+	if (fc->purpose == FS_CONTEXT_FOR_RECONFIGURE) {
+		struct super_block *sb = fc->root->d_sb;
+
+		/* Copy over current option values and mount flags */
+		ctx->uid = JFS_SBI(sb)->uid;
+		ctx->gid = JFS_SBI(sb)->gid;
+		ctx->umask = JFS_SBI(sb)->umask;
+		ctx->nls_map = (void *)-1;
+		ctx->minblks_trim = JFS_SBI(sb)->minblks_trim;
+		ctx->flag = JFS_SBI(sb)->flag;
+
+	} else {
+		/*
+		 * Initialize the mount flag and determine the default
+		 * error handler
+		 */
+		ctx->flag = JFS_ERR_REMOUNT_RO;
+		ctx->uid = INVALID_UID;
+		ctx->gid = INVALID_GID;
+		ctx->umask = -1;
+		ctx->nls_map = (void *)-1;
+	}
+}
+
+static void jfs_free_fc(struct fs_context *fc)
+{
+	struct jfs_context *ctx = fc->fs_private;
+
+	if (ctx->nls_map != (void *) -1)
+		unload_nls(ctx->nls_map);
+	kfree(ctx);
+}
+
+static const struct fs_context_operations jfs_context_ops = {
+	.parse_param	= jfs_parse_param,
+	.get_tree	= jfs_get_tree,
+	.reconfigure	= jfs_reconfigure,
+	.free		= jfs_free_fc,
+};
+
+static int jfs_init_fs_context(struct fs_context *fc)
+{
+	struct jfs_context *ctx;
+
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
+	if (!ctx)
+		return -ENOMEM;
+
+	jfs_init_options(fc, ctx);
+
+	fc->fs_private = ctx;
+	fc->ops = &jfs_context_ops;
+
+	return 0;
+}
+
 static struct file_system_type jfs_fs_type = {
 	.owner		= THIS_MODULE,
 	.name		= "jfs",
-	.mount		= jfs_do_mount,
 	.kill_sb	= kill_block_super,
 	.fs_flags	= FS_REQUIRES_DEV,
+	.init_fs_context = jfs_init_fs_context,
+	.parameters	= jfs_param_spec,
 };
 MODULE_ALIAS_FS("jfs");
 
-- 
2.46.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
