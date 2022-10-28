Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC12611139
	for <lists+jfs-discussion@lfdr.de>; Fri, 28 Oct 2022 14:24:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ooOPb-0007qM-Ky;
	Fri, 28 Oct 2022 12:24:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <okanatov@gmail.com>) id 1ooOPa-0007pz-7f
 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 12:24:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fkNyqRiedTm3lH/AVehxw07LQ3B/+YJMsP8sTlhH3nE=; b=Bf+JaD1elYpl5n/m8bVgZc/lEj
 vlPXtJA9EjchVi/9J+nPJ+k8rdmhd1q1HL2rfJDsC4jllN+y4jOEg5adX4Lx9ngaWOmPOsjLKnE2l
 duFRsnDysHmXd8BLdl2baGZ4p38jBB7hqo4HHgS3NhlF+aipEJFHRhq95uv8uBHKqNHc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fkNyqRiedTm3lH/AVehxw07LQ3B/+YJMsP8sTlhH3nE=; b=I
 8EMq34Jfvb9KP0YuK5BI70nok+0nZnLS0Ffu3CZEUAhQgA5VjC4L29UCymkvz+cQz/MMtdYIxkfHi
 Eu9A2a6j5GPiwpGZ04HlrGF6R2OoSpcWSYx4fF0NLOji9wZvIw1Q5/nQB96PmGB9S0iQwYhvO032f
 1yLEdf8u5wNlEYAo=;
Received: from mail-lf1-f52.google.com ([209.85.167.52])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ooOPY-0001v3-KI for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 12:24:33 +0000
Received: by mail-lf1-f52.google.com with SMTP id g7so8024517lfv.5
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 28 Oct 2022 05:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fkNyqRiedTm3lH/AVehxw07LQ3B/+YJMsP8sTlhH3nE=;
 b=gRJ4praDAGw8E8zTwBp3rS9xfPk35V676mB/QeOxwyzopxEGteUPw9sAoLNXIZcgf9
 jYn1MJrjYBTGJsHpplB7gyPOGRQmuNahGxrApoE5EVDGy8vR2vjaRn7Sc+17KWyDI/D1
 QE7bX1McwmZpoHKNlL4Gj19GfK96ecrbnsK3Umt+aKDeEDJSVjvQAaCY5f+a7X8cwLVk
 /4w2zQ7SYWMSC1EU7AYWfQbkg10qvQqWSy6apCUNGinuTSHph6/Q2VpukkjMiBPEdgPK
 DzCLekHmldZ4N14x04bFscTVIcDtRa5SQROZT3XbBZ2oJCD+C00xk4qbSofI8nbWT3uw
 3vCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fkNyqRiedTm3lH/AVehxw07LQ3B/+YJMsP8sTlhH3nE=;
 b=4J7NOCgKyM/rWGPjEZoY62s4X5xdk3ztrJXYRRKJBcQUdfSzSm+nekNgqHNhcuzH4S
 lCRI3QS5BmR8cquglwnVahE7whnLNeQsEh79KYC0XhS5eYyf7nnc3j1IKGVoRzDSQF+e
 BEBDFzuUOLTeAjagODNWpr4+jSYs2T+yEM4sObCqWnY/iAg//YGV35S955N9CQU9cAED
 1xJEbjPIgeNkF691KIyuJKf2jSBYumMhW9iES0fnssF/zQxEQJFN3df9az+pnCFtR9yZ
 ZJ4feJqmbD08bAHZAcyGBHl2vARmzyJCpDyn6QIbA8VeyEdN0p+Jg09WHmznPLTskSbL
 6DSQ==
X-Gm-Message-State: ACrzQf1TCe4w0thuE9kw0DXOVMfBokyeT/KV00EycqZRKu8ysX0gh1xA
 Ul3wCw6OzPujxYbsnPfbFiM=
X-Google-Smtp-Source: AMsMyM6RoZ8X77fBYLy65DpIZTWDdHUBFFqnJHhzGbQmFoLXJxxHjOLEj+VwHQ8LhoccmrYbZDsknA==
X-Received: by 2002:a05:6512:3085:b0:4a2:7d80:d4b4 with SMTP id
 z5-20020a056512308500b004a27d80d4b4mr21397278lfd.534.1666959865943; 
 Fri, 28 Oct 2022 05:24:25 -0700 (PDT)
Received: from localhost.localdomain ([95.79.189.126])
 by smtp.gmail.com with ESMTPSA id
 x16-20020a056512079000b00498f871f33fsm546686lfr.86.2022.10.28.05.24.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 05:24:25 -0700 (PDT)
From: Oleg Kanatov <okanatov@gmail.com>
X-Google-Original-From: Oleg Kanatov <okanatov@astralinux.ru>
To: Dave Kleikamp <shaggy@kernel.org>
Date: Fri, 28 Oct 2022 15:22:54 +0300
Message-Id: <20221028122254.21081-1-okanatov@astralinux.ru>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: jfs_mount_rw can call diUnmount and then diMount. These calls
 change the imap pointer. In case JFS filesystem is mounted on root (/), between
 these two calls there may be calls of function jfs_lookup( [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [okanatov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.52 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.52 listed in wl.mailspike.net]
X-Headers-End: 1ooOPY-0001v3-KI
Subject: [Jfs-discussion] [PATCH] jfs: makes diUnmount/diMount in
 jfs_mount_rw atomic
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
Cc: lvc-project@linuxtesting.org, jfs-discussion@lists.sourceforge.net,
 Oleg Kanatov <okanatov@astralinux.ru>, Oleg Kanatov <okanatov@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

jfs_mount_rw can call diUnmount and then diMount. These calls
change the imap pointer.
In case JFS filesystem is mounted on root (/), between these two
calls there may be calls of function jfs_lookup().
The jfs_lookup() function calls jfs_iget(), which, in its turn,
calls diRead(). The latter references the imap pointer.
That may cause diRead() to refer to a pointer "freed" in
diUnmount().
This commit makes calls diUnmount()/diMount() be atomic so that
nothing will read the imap pointer until the whole remount is
completed.

Signed-off-by: Oleg Kanatov <okanatov@gmail.com>
---
 fs/jfs/jfs_imap.c  | 2 +-
 fs/jfs/jfs_mount.c | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..390cbfce391f 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -310,8 +310,8 @@ int diRead(struct inode *ip)
 	iagno = INOTOIAG(ip->i_ino);
 
 	/* read the iag */
-	imap = JFS_IP(ipimap)->i_imap;
 	IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
+	imap = JFS_IP(ipimap)->i_imap;
 	rc = diIAGRead(imap, iagno, &mp);
 	IREAD_UNLOCK(ipimap);
 	if (rc) {
diff --git a/fs/jfs/jfs_mount.c b/fs/jfs/jfs_mount.c
index 48d1f70f786c..972b9ff18723 100644
--- a/fs/jfs/jfs_mount.c
+++ b/fs/jfs/jfs_mount.c
@@ -234,12 +234,18 @@ int jfs_mount_rw(struct super_block *sb, int remount)
 
 		truncate_inode_pages(sbi->ipimap->i_mapping, 0);
 		truncate_inode_pages(sbi->ipbmap->i_mapping, 0);
+
+		IWRITE_LOCK(sbi->ipimap, RDWRLOCK_IMAP);
+
 		diUnmount(sbi->ipimap, 1);
 		if ((rc = diMount(sbi->ipimap))) {
+			IWRITE_UNLOCK(sbi->ipimap);
 			jfs_err("jfs_mount_rw: diMount failed!");
 			return rc;
 		}
 
+		IWRITE_UNLOCK(sbi->ipimap);
+
 		dbUnmount(sbi->ipbmap, 1);
 		if ((rc = dbMount(sbi->ipbmap))) {
 			jfs_err("jfs_mount_rw: dbMount failed!");
-- 
2.30.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
