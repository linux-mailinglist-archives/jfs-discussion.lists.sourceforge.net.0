Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C359B0A79
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2024 19:00:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t4Ng4-0000Pt-Lv;
	Fri, 25 Oct 2024 17:00:44 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zoo868e@gmail.com>) id 1t4Ng3-0000Pn-SU
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 17:00:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ncTae3ZwmA9C+qJN0T5EhF65fJ0IgO7SweDWmp+kk80=; b=DbsvVNsvYOXxn7a9Wq7PUX8vNR
 hdcdFOSOgo7iOSOKg1wShUZiTyhS033RvdLXbMJ9PqP5WwlaRfjgwcn5zK7kNRGcx+RQcDkMo0q1Q
 1yHIoYCPHrmLcP8zGGq61/bjdZbP9FIDzFvzG3r4zeHpGOl74ttGwy2l8rmmvllDOgp4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ncTae3ZwmA9C+qJN0T5EhF65fJ0IgO7SweDWmp+kk80=; b=WATaElDErkwF2Tn0KyMVuVsN9O
 qVfd2hXqF8NnEp4KiK9aJ6TIxY51b+qr8m3JFvI00jyAiji8C+mfQzZLqeZa/hieAuLBy5cEYYgnI
 pxrDzzjIgBjG4g0ehICZtoE+C91HEEXGK8zxn+Rx8pRmZ/TQNKA3HKy9DblSWVAisaHE=;
Received: from mail-pl1-f176.google.com ([209.85.214.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t4Ng2-0000oo-Nx for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 17:00:43 +0000
Received: by mail-pl1-f176.google.com with SMTP id
 d9443c01a7336-20cbcd71012so22530855ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Oct 2024 10:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729875632; x=1730480432; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ncTae3ZwmA9C+qJN0T5EhF65fJ0IgO7SweDWmp+kk80=;
 b=kB0Paw6tvWWABzQiZkqPMqCKACU3PGNE+YWZNojWOMmOEKzCl5bS8Q9BMc4qbA5Iel
 +xpaqY0Vk8KmCVsmxeC46+H98Aph1MgNdZt8fy1mgdJ+DHBlc616Qf3NTWQgclzLuhSH
 hO4MretPQaZhpfSuXz5vI8khnUgTIHJ7EHa7LiaE7ATvLdeycbILA+EOYI8tUnT2K0mu
 FDmYC0SLXQbYPY9C/1VXixM55oAGpWWnSccg7E0CVip0aRjFReoY49FGg2QCYKoArELA
 bjPf2GA75vBFa2zpSyMH3l4OJvnIP+l6gN/UWdSpEfrwWTNJj9KMiX0DCrEQlGfPfkwX
 OIOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729875632; x=1730480432;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ncTae3ZwmA9C+qJN0T5EhF65fJ0IgO7SweDWmp+kk80=;
 b=KD6jYMJg/protgxi55CI9aclnPD3cw7a58VG3+uN+LY0PsDbjXN3/S/3fR/BLNmGnl
 BzKrzkp8WEDC5DemsxupAe5TtwbJJtj+CJtW/9SMcSisoMg2waxbKSv2fZsuZsnQ0yqP
 MICwh6lORLJtFxyqdeTXl7p2lyHatW3dw495u0pVacVJbwbMEj1WIgaJddhxQZR10+Fq
 MbtlEptmfgDbepK1c+g0LHNPiA/4mMtBtTT7UcT8ZrFKJTx4H6XI9bdgOCnuCkviEAHR
 tJg7QE3NQnkYAR303MdNz7EBGzse9GCZSHcjp6xxAREQQ+kBRuMYyjngxaWLT3dFg29n
 atIQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUyWFOOmoA2t7WJBiNLBZV96qqbOoh4G4PK8xtquUakI3JJG7LyeIezJrcp9vcVaRVoYwA1D/Cwia+eBxrP9Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxXgUAiEb0JsPOKfiuq3grGXCk2JXDV7FyWkuVpcC5x9YATj1e6
 LsS/Chgfm8eUSRsH1OTxI2nMwtlNun3XJBi5IK/XlzJibpdbxgI9
X-Google-Smtp-Source: AGHT+IGh7PcIa/2vfyb8aAlOZYb5BeBvWw13eMRLOWnbL0Pqb4cThQvr4YnC41xRrfcNeHHx0ZsM5A==
X-Received: by 2002:a17:903:190:b0:20c:f87f:b7d0 with SMTP id
 d9443c01a7336-20fa9e06013mr159469035ad.14.1729875632047; 
 Fri, 25 Oct 2024 10:00:32 -0700 (PDT)
Received: from TW-MATTJAN1.eu.trendnet.org (219-87-142-18.static.tfn.net.tw.
 [219.87.142.18]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bc04b8f5sm11325935ad.270.2024.10.25.10.00.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2024 10:00:31 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Date: Sat, 26 Oct 2024 01:00:10 +0800
Message-Id: <20241025170010.19654-1-zoo868e@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
References: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Return immediately if the needed free bits span a full word
 to avoid out-of-bounds shifting. #syz test Reported-by:
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
 Signed-off-by: Matt Jan --- Changes in v3: Return the result earlier instead
 of assert it Changes in v2: Test if the patch resolve [...] 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zoo868e[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.176 listed in list.dnswl.org]
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.176 listed in wl.mailspike.net]
X-Headers-End: 1t4Ng2-0000oo-Nx
Subject: [Jfs-discussion] [PATCH v3] jfs: UBSAN: shift-out-of-bounds in
 dbFindBits
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
From: Matt Jan via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Matt Jan <zoo868e@gmail.com>
Cc: Matt Jan <zoo868e@gmail.com>,
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Return immediately if the needed free bits span a full word to avoid
out-of-bounds shifting.

#syz test

Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Signed-off-by: Matt Jan <zoo868e@gmail.com>
---
Changes in v3: Return the result earlier instead of assert it
Changes in v2: Test if the patch resolve the issue through syzbot and
reference the reporter.

 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 974ecf5e0d95..45b7a393b769 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3012,6 +3012,11 @@ static int dbFindBits(u32 word, int l2nb)
 	int bitno, nb;
 	u32 mask;
 
+	/* return immediately if the number of free bits is a word
+	 */
+	if (l2nb == BUDMIN)
+		return (!!word) << BUDMIN;
+
 	/* get the number of bits.
 	 */
 	nb = 1 << l2nb;
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
