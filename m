Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 48D704DEA69
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Mar 2022 20:30:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nVemJ-0004IH-IK; Sat, 19 Mar 2022 19:30:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paskripkin@gmail.com>) id 1nVemH-0004IA-Mp
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 19:30:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BD8eTbQPnsTfoe1mvwiTLzdxnue2WjbCfWcDnLGgtf4=; b=m2Kl58CMKrhGV3EoXY5VZ7Dt4J
 EBadltcOzBypMgydn5dewhGkeSDxvW/wOt4y3mpnzgbywMjkvVjmUGpZJNEWN4OK68v880UbYqGiu
 hzJgYi98cQA+dsgzqOlpswKsjC1dJCKv6zxvds15emalTEcdiSAS5+kooWNAGFgrTZ4c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BD8eTbQPnsTfoe1mvwiTLzdxnue2WjbCfWcDnLGgtf4=; b=XGUaDQwngiJDHflQbocf7gaU3M
 lGEsotQ3TLAGvD2zqVFnBgqBcQp6fWiSYxA3cOtxfY32wMSxpi8+QPQAQlNotB1qK7SxuohU8i07B
 5YPGU/g59NSyEBmRgj+J1vO81+mh9TGkxVxRv9i4bjcPvwN90zWjyZV0Hww6O0xzyaag=;
Received: from mail-lf1-f41.google.com ([209.85.167.41])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVemE-004OsV-70
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 19:30:16 +0000
Received: by mail-lf1-f41.google.com with SMTP id bu29so19015690lfb.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Mar 2022 12:30:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BD8eTbQPnsTfoe1mvwiTLzdxnue2WjbCfWcDnLGgtf4=;
 b=cjhwin7fvJu2x0gqeLQmRRL7aDSPnbUro6yyudk8a+1GQFXivQqj5eOThiGfCqs6ze
 hl9hpuLe5n2VUvoc+TTvWXkmp6SQTrM6yXCx8svk3ILuPTITm8/9NdpqZTD2FLQpjtcM
 LxdU664w4R7fLPQk9vPA6YBbVMz1eLGnfBlCFLaNCGqNDAYT6mEiXVHbRJlQCfsI3pSb
 PaexKD0rvIWUmk5wzYyowZR/TskrkZoWCKwhxuDkYaau0SSd34eJO+/nojer547mbT1F
 SPfHnMjlagXdRMySbB8+kUWWIz7eHSStRPVrhBdSUivdH+81zR8qcED+gO2Hbm9MvQQL
 +BMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BD8eTbQPnsTfoe1mvwiTLzdxnue2WjbCfWcDnLGgtf4=;
 b=wNE6/0Xl0srrnilXhMld3CNTCZ1Wx9+zgCe+ToiW0vpawbDlchYUDZ3rdbbq++56Hc
 yowQSLw1J2EMtpWD82wDMHgdT9lBsDPKl8u9fJjyYxS88hNEC1ft0+IuE4r1GrOWDiMD
 wQUN8mTErfAMjV+9JjywR3bFOjSqQQrxXxMq63KBlz4ZiCZQRBDBQzJpnXaEqtBzmjpd
 j4wKGtGefr5PWfd45yQ3H/j4ofW61UJmkyZ7/qgO0XL0xOCFWmV0qi4lrKkzF67xQdeV
 m2y0ikxzejNRTpVBbwR9wCctnmz18JguHOpAxqX2Qn6T6BFFnZDHwzQ/EHEpKlVNCi2/
 D48Q==
X-Gm-Message-State: AOAM531P9wCM+R4Omup5Te0px/X+TRg+NOLhK2wVpEyXp77G9kny9vPx
 T2Xo86IjyWLBiqxs8QvTrTY=
X-Google-Smtp-Source: ABdhPJxjs9QSMiCTPtew4hwu4tpOKIPVKjE84UiX5vDayMirhgKFvZl/sGkcQi07Htu6+IRWRm0u0A==
X-Received: by 2002:a05:6512:1382:b0:445:9536:903 with SMTP id
 p2-20020a056512138200b0044595360903mr9996748lfa.89.1647718207006; 
 Sat, 19 Mar 2022 12:30:07 -0700 (PDT)
Received: from localhost.localdomain ([46.235.67.145])
 by smtp.gmail.com with ESMTPSA id
 h2-20020a05651c124200b002492835aa87sm1616379ljh.118.2022.03.19.12.30.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Mar 2022 12:30:06 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: shaggy@kernel.org
Date: Sat, 19 Mar 2022 22:30:00 +0300
Message-Id: <20220319193000.6449-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220319191620.32372-1-paskripkin@gmail.com>
References: <20220319191620.32372-1-paskripkin@gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Syzbot reported divide error in dbNextAG(). The problem was
 in missing validation check for malicious image. Syzbot crafted an image
 with bmp->db_numag equal to 0. There wasn't any validation checks,
 but dbNextAG() blindly use bmp->db_numag in divide expression 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.41 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.41 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paskripkin[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1nVemE-004OsV-70
Subject: [Jfs-discussion] [PATCH v2] jfs: fix divide error in dbNextAG
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
Cc: Pavel Skripkin <paskripkin@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Syzbot reported divide error in dbNextAG(). The problem was in missing
validation check for malicious image.

Syzbot crafted an image with bmp->db_numag equal to 0. There wasn't any
validation checks, but dbNextAG() blindly use bmp->db_numag in divide
expression

Fix it by validating bmp->db_numag in dbMount() and return an error if
image is malicious

Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Reported-and-tested-by: syzbot+46f5c25af73eb8330eb6@syzkaller.appspotmail.com
Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>
---

Changes since v1:
	- Add missing clean up in case of error

---
 fs/jfs/jfs_dmap.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 91f4ec93dab1..d8502f4989d9 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -148,6 +148,7 @@ static const s8 budtab[256] = {
  *	0	- success
  *	-ENOMEM	- insufficient memory
  *	-EIO	- i/o error
+ *	-EINVAL - wrong bmap data
  */
 int dbMount(struct inode *ipbmap)
 {
@@ -179,6 +180,12 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
+	if (!bmp->db_numag) {
+		release_metapage(mp);
+		kfree(bmp);
+		return -EINVAL;
+	}
+
 	bmp->db_maxlevel = le32_to_cpu(dbmp_le->dn_maxlevel);
 	bmp->db_maxag = le32_to_cpu(dbmp_le->dn_maxag);
 	bmp->db_agpref = le32_to_cpu(dbmp_le->dn_agpref);
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
