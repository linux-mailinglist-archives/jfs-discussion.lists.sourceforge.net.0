Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 670EB988E85
	for <lists+jfs-discussion@lfdr.de>; Sat, 28 Sep 2024 10:38:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1suSxl-0006YT-0Y;
	Sat, 28 Sep 2024 08:38:01 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghanshyam1898@gmail.com>) id 1suSxi-0006Y9-QD
 for jfs-discussion@lists.sourceforge.net;
 Sat, 28 Sep 2024 08:37:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=r7jYH2F1hiaN1WlCy/B6tx6x8U7coXSLbe0ZEW+Tt4Y=; b=EsuMxt0lmRSdtTd/kXOR6r5JkK
 Z7MgrnnFEGrr8Ryjxm8jGaR5GCeLo8MZqd/poEekkT8T0Li5uSGENv6Xu+CELKOGyKDwsRVIZDYQM
 JGg0GsKVLD+W+LppLmySz8dx+GulNtyrGSrUppGovQl7H2QVVks1RiKPz0YIuHoU/uV0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=r7jYH2F1hiaN1WlCy/B6tx6x8U7coXSLbe0ZEW+Tt4Y=; b=Y
 AhxdQTYqwftKPPv9eDF8J+gRlSjv+lh8/aaUH6XvbB8luseDESQelQ6z3FZhNnHlGuYHD4HbwisKg
 NQTeicBC7av/V0x6/8xwpN12rtkcow9zGZyY9Y0r3nyXZW19pVlHw0e1H312t78VtW/NHmRH+DPsz
 rdoiIHH04HORI+bQ=;
Received: from mail-pl1-f169.google.com ([209.85.214.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1suSxi-0001n0-5h for jfs-discussion@lists.sourceforge.net;
 Sat, 28 Sep 2024 08:37:58 +0000
Received: by mail-pl1-f169.google.com with SMTP id
 d9443c01a7336-2059112f0a7so26895205ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 28 Sep 2024 01:37:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1727512672; x=1728117472; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=r7jYH2F1hiaN1WlCy/B6tx6x8U7coXSLbe0ZEW+Tt4Y=;
 b=MjfgX5+jylAoRv9f1gJFknC3HN1qC/3FGiDyxQyGrD59BdFiJKK93iGXlX/I260yXE
 9U3pvlqbR05pTCNF6Rr+FK7VOTIXOdI5OYa6qZUJLGMPCBmSJk2duGdL9aIsDoxtFyiU
 HHhdP42rpWMspkcnbt8iW5/JU+xx3kAiBi4zFFfYIhbOZsg126w+15ajR9Ck8qsHEZor
 9cNLmGWUcdbqIN5kyvBpn1k8bPQ2nl/Xff14xAvwEiXiRtr2CGh0U3vrN5tyNDftSgnD
 te1MdU3SsvrE/PsTFkspk+vIN0Ct6p3QZpoQDK8UU0N71w312i/zeeURGULYAcaKanD1
 UASg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727512672; x=1728117472;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=r7jYH2F1hiaN1WlCy/B6tx6x8U7coXSLbe0ZEW+Tt4Y=;
 b=rtSTfIh7B3p/W370+gYxoCPjXB3HBi9eHsvvInO3tTe9ho9nzEK05/YOKUPYM9ceI/
 z7W9omO7OedGOM/LzmtV9nf8FuEulGd+D6l29Pb+Nua6w+xe5Qh7nDsD5V3RpY0k53PL
 ZeKq9FUHFSS4cJyoi6/l8afxHztVJfZK/jlmAKp8UvCsqjfHfozNcp+iDO6bSFexRqDK
 Q/Nospfd6vNH6jnTb4g3kPoM4vEU3ZLHHFW9AxjtJTYlhujciq8xd1pOBmET6qIBhYSc
 5KD+sbcR6YeKU5vvGNH5Lk2K38CkiwAwGwny3mYo99bqUGHPPenWdczsnyyKMYz+C+9q
 QgKw==
X-Gm-Message-State: AOJu0YxAOpEnQazlnc/7MurR+EeFa5GS0EIpswecblawnyf9BbFaoSpt
 7QaUDd8FxC/lGnpTlBbL4g868TsZ1JYAS31xDqerAz9eFvYGCG5T
X-Google-Smtp-Source: AGHT+IFxgQrwS/b0lmsVc0Fb1h1wdOH3E7LcKyUuxG3bTAwOb+qBjrH7bbUr7E1YGq/4ZUJeLUyC0w==
X-Received: by 2002:a17:902:d4cc:b0:202:4640:cc68 with SMTP id
 d9443c01a7336-20b37bb7919mr73605265ad.59.1727512672348; 
 Sat, 28 Sep 2024 01:37:52 -0700 (PDT)
Received: from dell-xps.. ([2405:201:3036:a902:fe6e:a336:2d50:3660])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-7e6db2927d3sm2815845a12.3.2024.09.28.01.37.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 28 Sep 2024 01:37:52 -0700 (PDT)
To: shaggy@kernel.org, eadavis@qq.com, ghandatmanas@gmail.com,
 osmtendev@gmail.com, ghanshyam1898@gmail.com
Date: Sat, 28 Sep 2024 14:07:22 +0530
Message-Id: <20240928083722.2317029-1-ghanshyam1898@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The value of stbl can be sometimes out of bounds due to a
 bad filesystem. Added a check with appopriate return of error code in that
 case. Reported-by:
 https://syzkaller.appspot.com/bug?extid=65fa06e29859e41a83f3
 Signed-off-by: Ghanshyam Agrawal --- fs/jfs/jfs_dtree.c | 7 +++++++ 1 file
 changed, 7 insertions(+) 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghanshyam1898[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [ghanshyam1898[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.169 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1suSxi-0001n0-5h
Subject: [Jfs-discussion] [PATCH] jfs: array-index-out-of-bounds fix in
 dtReadFirst
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
From: Ghanshyam Agrawal via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
Cc: syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net, syzkaller@googlegroups.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The value of stbl can be sometimes out of bounds due
to a bad filesystem. Added a check with appopriate return
of error code in that case.

Reported-by: syzbot+65fa06e29859e41a83f3@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=65fa06e29859e41a83f3
Signed-off-by: Ghanshyam Agrawal <ghanshyam1898@gmail.com>
---
 fs/jfs/jfs_dtree.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 5d3127ca68a4..69fd936fbdb3 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -3086,6 +3086,13 @@ static int dtReadFirst(struct inode *ip, struct btstack * btstack)
 
 		/* get the leftmost entry */
 		stbl = DT_GETSTBL(p);
+
+		if (stbl[0] < 0 || stbl[0] > 127) {
+			DT_PUTPAGE(mp);
+			jfs_error(ip->i_sb, "stbl[0] out of bound\n");
+			return -EIO;
+		}
+
 		xd = (pxd_t *) & p->slot[stbl[0]];
 
 		/* get the child page block address */
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
