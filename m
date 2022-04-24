Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1946C50D542
	for <lists+jfs-discussion@lfdr.de>; Sun, 24 Apr 2022 23:17:54 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nijbk-0006MS-Am; Sun, 24 Apr 2022 21:17:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <colin.i.king@gmail.com>) id 1niero-0005R4-A9
 for jfs-discussion@lists.sourceforge.net; Sun, 24 Apr 2022 16:13:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+ObLcZEUQxD8FwLhd5DJnfColWxUYkRGqghpm3bA5uM=; b=QbRXzs+W2EIzapjf0q60dKjFnB
 1a4h8Z+V8T9IxKAY3xvC6TFm7OigyM2axx+Q47fdoXL4erVavohninjpsefvIawQOdtmmKwPbt7Dx
 Vvxyuq4/pZPPyqrbHRKQaAHtQ198n3TbFb3ubmqb4JSq9Y0qzh8Vv5AWr/evEGAR2g9I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+ObLcZEUQxD8FwLhd5DJnfColWxUYkRGqghpm3bA5uM=; b=m
 5owY5g/v52sNMsWz2rBdd3Qh8TlMtUFkcEjEppHJO+kkNgEOK1ouRlOPCLffHIaSym/8ggQCa20i9
 iwHE4Je0UeR27DIykP6495rWPEZOp12NPND5FG/r5+bdeWHi8KK8hl3zuYC/ZyOc7zUfH0Fm6ohYL
 wKvr9Y2W+CuWb2WI=;
Received: from mail-wm1-f41.google.com ([209.85.128.41])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nieri-0002vJ-SY
 for jfs-discussion@lists.sourceforge.net; Sun, 24 Apr 2022 16:13:43 +0000
Received: by mail-wm1-f41.google.com with SMTP id q20so7939146wmq.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 24 Apr 2022 09:13:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ObLcZEUQxD8FwLhd5DJnfColWxUYkRGqghpm3bA5uM=;
 b=ncvMStXd44nfdtehxW3QyeCA9dTGDoz0HQIC9gjUtqGA4Iom4noF68Ld2hN/+86Vaa
 otCal3sGJ9Oy34hY0kEz5vx2n58DyRb6aqG4IONt+ieYQOBL7qtsxyfgN8CzBSEAeO2p
 ttWSTb0tJ/RwnAqpbaHOkSgVe53l2H45vfdcuRt2P70KMs7XXxRN1yP1RubOSGFf7LNW
 eSIoRelsI15zZQW8zzkUY0H7hqD7DpmpzyrDTHz18WOyskaHQNxjevmmS2zwul9Klyd3
 an7rreHbFQlVduA9o1EGniC/qBWBBIghxgcxTh0UQw8I9qxnU/loW80CZpIy6NKO8B2T
 v59A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+ObLcZEUQxD8FwLhd5DJnfColWxUYkRGqghpm3bA5uM=;
 b=MFeniV9ejS++B8UnCxxXcGdFSitwzGvjiHFS0n2jHW1hb3wlXz0P0hUKzKK1td52+D
 5l1N53DYXtBb54Ugp8pNS5fByquG8o/5bbYjCJYuhxvID4iXMR9d3IkBR1Rg3bmok4mj
 fbH99y9exXPRP8u1br6OMdUT1MUOEhqtGEvp7qlho5HBzPdLVhEF8c55gNEe6yllByfc
 lnJV2oF3o5uk4NuWfFtXXDTDzAOdDAPsgqxovBwwKMYG0ELK8YA8X/NMPyLkJNYsF5zb
 wFWT4S+vA+kgYumx6XQOGq1cUyngPpIdPCweCHDW2cR/6xn6DHfx2ZbVvxsI/Mk0yUrt
 J6gw==
X-Gm-Message-State: AOAM532E+5tYNL6R8XCjxGVHSW+MgPX/1Z4CgUfDRIkjUZ9/ukryWvfo
 X3Gy8sNQwtWxBjkXZ1VP5bk=
X-Google-Smtp-Source: ABdhPJyh3p31G4sIeVZXTGFdvpzzk7/VTR2UidhWmiitY7AivHww4XQg6U7xwHJh/6v4nJfIiLzehg==
X-Received: by 2002:a7b:c94a:0:b0:38e:c252:4a58 with SMTP id
 i10-20020a7bc94a000000b0038ec2524a58mr22601807wml.177.1650816812065; 
 Sun, 24 Apr 2022 09:13:32 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 a7-20020adffb87000000b00207982c7f4dsm6840310wrr.67.2022.04.24.09.13.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 24 Apr 2022 09:13:31 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Dave Kleikamp <shaggy@kernel.org>,
	jfs-discussion@lists.sourceforge.net
Date: Sun, 24 Apr 2022 17:13:30 +0100
Message-Id: <20220424161330.1360068-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  The pointer tlbk is not used,
 it is redundant and can be removed.
 Cleans up cppcheck warning: linux/fs/jfs/jfs_xtree.c:2551:17: style: Unused
 variable: tblk [unusedVariable] Signed-off-by: Colin Ian King ---
 fs/jfs/jfs_xtree.c | 1 - 1 file changed, 1 deletion(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.41 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [colin.i.king[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.41 listed in wl.mailspike.net]
X-Headers-End: 1nieri-0002vJ-SY
X-Mailman-Approved-At: Sun, 24 Apr 2022 21:17:26 +0000
Subject: [Jfs-discussion] [PATCH] jfs: remove unused pointer tblk
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

The pointer tlbk is not used, it is redundant and can be removed.
Cleans up cppcheck warning:

linux/fs/jfs/jfs_xtree.c:2551:17: style: Unused variable: tblk [unusedVariable]

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 fs/jfs/jfs_xtree.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 3148e9b35f3b..d29979d0a6aa 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -2548,7 +2548,6 @@ xtRelocate(tid_t tid, struct inode * ip, xad_t * oxad,	/* old XAD */
 	   int xtype)
 {				/* extent type: XTPAGE or DATAEXT */
 	int rc = 0;
-	struct tblock *tblk;
 	struct tlock *tlck;
 	struct xtlock *xtlck;
 	struct metapage *mp, *pmp, *lmp, *rmp;	/* meta-page buffer */
-- 
2.35.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
