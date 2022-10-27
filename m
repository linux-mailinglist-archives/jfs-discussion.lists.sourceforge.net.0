Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AB8060F90C
	for <lists+jfs-discussion@lfdr.de>; Thu, 27 Oct 2022 15:30:44 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oo2xr-0006Vm-BJ;
	Thu, 27 Oct 2022 13:30:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <okanatov@gmail.com>) id 1oo05w-0003dS-I1
 for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 10:26:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RbvaMkffwzOTX4cL6H4/doX5mxIaqaRhqvrOjlYhx8I=; b=GTFIEEBN5/zHKtJ9lru042fgzs
 b133l/RjdQl1x8RfdB5M8QDVEasg/ydHvuyTSyOV0XfkPdRH9PckrsLnVApIWJh52uApYumJdQcBh
 J644/OJHFeytTWeJ8Gornuz5BY+hvmEGWS/8YhimocB2eOZSxdo64GEOYrjXLzGlQkq4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=RbvaMkffwzOTX4cL6H4/doX5mxIaqaRhqvrOjlYhx8I=; b=J
 Ge4vbaT5FSu7aSY5GI4k555aQUJYR1mqpRtN+XixrGbNlDaauLcRK7UsAk80Wr+0J1D/S+QUltvWt
 PJafGoGtnAJmh6zWdZ6SRGoqR77EYf0UCYArtso0VHNVHN87LTlf8xk/EUdMIN/sRvl6/jotd03HP
 WiC7lbcz1/JlZ8II=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oo05t-00024M-AA for jfs-discussion@lists.sourceforge.net;
 Thu, 27 Oct 2022 10:26:40 +0000
Received: by mail-lj1-f180.google.com with SMTP id b8so1761321ljf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 27 Oct 2022 03:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=RbvaMkffwzOTX4cL6H4/doX5mxIaqaRhqvrOjlYhx8I=;
 b=osZVBKNxcamn4OHdLrS/GFk9jg5Zb7kGXAHFiGpcbCutdNdxmLl8623BunjyWojwWC
 nYAwNco6vem3wMirQlwr6Ymru/6YFOapEjl8z/rL2OhT7UTYJ7y9HwzKYSOqb/KKykKm
 Jnvd4R0IEDdTUuKps7yV8yv35XHi8CmOdn9blG91nSm8mJijmBwz+APC9qbpk8RHJi9a
 V9ZOUb/P451bzYmwzC64MekxBn1XPSrA0kA6kb32wgCIdekd5K8yc3Bi1MBNJkx70+vt
 q4MGM+QL17e4gZqdzaOQvRZyKsfzcCy562+KgC4rzlMz1KBkdzY53+k6sUk32HJMstMQ
 HUUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=RbvaMkffwzOTX4cL6H4/doX5mxIaqaRhqvrOjlYhx8I=;
 b=4KNwX2mqKos+ZeqDwfNpj71SrPD0etB65zk7u+7QEYedXBf/HcG04Qqvcji2CpKAq5
 yLC7bat72z73ieA17e0FbJG+iFma1vX5M9MtB7d7tCsqA2721N1LK8C4DoKNLwFJ9uBg
 0OZ4YHwXeFTw8q2yfQJfxWcZbum92/008lRh9iu6JVNs98gbyyoSMmcOy+mdDY/stowm
 OprKNHrYsVIFFxwOM9dgkIwKNSevrknf26erVgYOjhCnbM2DR8sRxgBprIHYRxwhzJmZ
 6GQqfcIXJBkFR7v22RTC3dBu3DJzDSFbKSssv6DVkuBrA2GLwXc56JYIG31UPEe7HIy4
 cvkg==
X-Gm-Message-State: ACrzQf1gNO6YrtKrQlq5hBn22QCgLDKGM32xynbtF8CA6RgCWf2DERNC
 JHkSDMTghDubNiJnNGJRd+E=
X-Google-Smtp-Source: AMsMyM6S/4R4SG7CkZ6Pzd+Qm2SW/hvf6XM3uhYkRhJ6t8mLcawpQwKabA/6EcT9FMfthd7xC1Sqnw==
X-Received: by 2002:a2e:9957:0:b0:277:b4d:c70b with SMTP id
 r23-20020a2e9957000000b002770b4dc70bmr7387666ljj.308.1666866390649; 
 Thu, 27 Oct 2022 03:26:30 -0700 (PDT)
Received: from localhost.localdomain ([95.79.188.173])
 by smtp.gmail.com with ESMTPSA id
 c11-20020ac25f6b000000b0047f7722b73csm134897lfc.142.2022.10.27.03.26.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Oct 2022 03:26:30 -0700 (PDT)
From: Oleg Kanatov <okanatov@gmail.com>
X-Google-Original-From: Oleg Kanatov <okanatov@astralinux.ru>
To: shaggy@kernel.org
Date: Thu, 27 Oct 2022 13:24:52 +0300
Message-Id: <20221027102452.5701-1-okanatov@astralinux.ru>
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
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.180 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [okanatov[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.180 listed in wl.mailspike.net]
X-Headers-End: 1oo05t-00024M-AA
X-Mailman-Approved-At: Thu, 27 Oct 2022 13:30:11 +0000
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
Cc: jfs-discussion@lists.sourceforge.net, Oleg Kanatov <okanatov@astralinux.ru>
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
