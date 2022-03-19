Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E5ABF4DEA5E
	for <lists+jfs-discussion@lfdr.de>; Sat, 19 Mar 2022 20:17:01 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nVeR9-0004Fb-9H; Sat, 19 Mar 2022 19:16:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <paskripkin@gmail.com>) id 1nVeR7-0004FV-WE
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 19:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=734S21LskhdoeX+gSiKckHrnBjf5Gz5LFF95lcT9dR8=; b=A3gaakaEVvFhpfO9G3RTor7qtM
 iglA3hQG3CDOm3iWu3bSBLZMyH6slKUhpTY2XATXOZAQdLWj0LuV7Moi8WTZQ5jOLk85LVRk+AR3N
 ENisHKqxXgrtLAHjqrrMOzyVqwgAsixdJwIyrPLw/EDQyH2mz+3dEEWw1KhEfbyVsT/8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=734S21LskhdoeX+gSiKckHrnBjf5Gz5LFF95lcT9dR8=; b=e
 HY3DPAz2oJAKkp3rD3230jdZqlNP4v02n5BtnCam1J6CxB/IjMsgQiA9PByGGaGgDCuqgpC5HSUiV
 Tf1fsOlJNr0WLxjyhIKPnpHIPWCemeouWsogPZ2LdmOjbeSI8KKbz0QszYzI6PEw2jjjpTzAvq/l5
 rcw4xjfEQLmvpLoA=;
Received: from mail-lf1-f53.google.com ([209.85.167.53])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nVeYy-004OHN-BY
 for jfs-discussion@lists.sourceforge.net; Sat, 19 Mar 2022 19:16:37 +0000
Received: by mail-lf1-f53.google.com with SMTP id p15so8171928lfk.8
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 19 Mar 2022 12:16:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=734S21LskhdoeX+gSiKckHrnBjf5Gz5LFF95lcT9dR8=;
 b=pF3K/NfP9GIaTIVLn3LReKklwQ1JaBC9F6llUZLuoOGaRZNC+yXBCqYArApm9JVTd6
 Evn0lGdwM7BdyLCwz6Be9gCGEbitzAOmraepUbxSVzXnjijYVuvyKy71JHmqPGVyUJ9X
 3I9pGDPkP00sclKC5KoufrWtkFpwdHlIa+vW1IjPsew67o82YvT3owAjfwfXXJ1u+dkR
 +8thlmZljNH5I8QLiD0plG6eLyjJ9cGMgKKjjmMqjszIJLNsKoM7BCQG4ltnZGgclTp7
 GwY3jx6lMTKCBP+7ylRacprPIpZ3k8fGP5QQ17aV6YvQtxNKqmBhP2aeiGu8YOeKqE0i
 BT+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=734S21LskhdoeX+gSiKckHrnBjf5Gz5LFF95lcT9dR8=;
 b=G3/mR8jwL4BL9WVF8ThCsJNP/KcQ1MOnyAf39PQVHZYcoIpHiNOcZ3bVie6eaqLD5y
 kv6mQ01ZqQGRDt+CKWVr0+DFapZajeBZ5aDcOhvR05DJ/N+nAmAUOanaXwdz792uHC9/
 c3O2MgJsD1CA2lCYK4muH2Y0i9dbXnppN3GkqXf+bZYuQymqwarIWLlUMORiM3QQ+xyE
 iT42wleYLR1blSqw69DlE/NJ6N8uBC0G/DWnrPr/vSzhtEuvFT1bpyk31jErUE0uJH9Y
 T2hr+9ue3zhEor++j0M8gFCAFvF7BUv3yto/v0LdbnQfLcZrLfvWT51dtxVqWj/lrLGD
 1KOA==
X-Gm-Message-State: AOAM531fX0i4swf5zRqT0s0GK/sTov2ism0yYuHzfvXUY4434PLqQfTG
 HvMuVauzr00TC6RnfjhSVag=
X-Google-Smtp-Source: ABdhPJyz3BXLyIWMqqxM7+wNLeyW57MuZ4mDdgYeU6EnVq8Twb3qLE+TbToSTDS4ACca6/1Pnhr9wA==
X-Received: by 2002:a05:6512:3fa2:b0:445:a29b:b0d8 with SMTP id
 x34-20020a0565123fa200b00445a29bb0d8mr9584752lfa.163.1647717384702; 
 Sat, 19 Mar 2022 12:16:24 -0700 (PDT)
Received: from localhost.localdomain ([46.235.67.145])
 by smtp.gmail.com with ESMTPSA id
 bu39-20020a05651216a700b004484a8cf5f8sm1354668lfb.302.2022.03.19.12.16.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 19 Mar 2022 12:16:24 -0700 (PDT)
From: Pavel Skripkin <paskripkin@gmail.com>
To: shaggy@kernel.org
Date: Sat, 19 Mar 2022 22:16:20 +0300
Message-Id: <20220319191620.32372-1-paskripkin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.53 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.53 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [paskripkin[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1nVeYy-004OHN-BY
Subject: [Jfs-discussion] [PATCH] jfs: fix divide error in dbNextAG
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
 fs/jfs/jfs_dmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 91f4ec93dab1..633a9aff0868 100644
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
@@ -179,6 +180,9 @@ int dbMount(struct inode *ipbmap)
 	bmp->db_nfree = le64_to_cpu(dbmp_le->dn_nfree);
 	bmp->db_l2nbperpage = le32_to_cpu(dbmp_le->dn_l2nbperpage);
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
+	if (!bmp->db_numag)
+		return -EINVAL;
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
