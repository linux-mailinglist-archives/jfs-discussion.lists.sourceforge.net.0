Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EBAF3485D8
	for <lists+jfs-discussion@lfdr.de>; Mon, 17 Jun 2019 16:44:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hcsrV-0003p2-0d; Mon, 17 Jun 2019 14:43:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander198961@gmail.com>) id 1hcsO8-00024p-7P
 for jfs-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 14:13:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=A4+NWm3uj2vW47hGvQEajXQiT2mH6czBZ2S5v1C4m2A=; b=YF+Kc3MTApYmn/Q+d801DAyQgc
 79bPQiA5VikrZOabsdZFm85geGy5xa4zcQMhK7WUQKEa++Px1yzWT+8bD1SCQyJ8LRbbQCCijMmIm
 eHI+dGk6eumNYCkzY/fMPn4IvGunLinT11ww5HBQgxSg1B/7hhQ6gt9zSzp2EG6yihVM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=A4+NWm3uj2vW47hGvQEajXQiT2mH6czBZ2S5v1C4m2A=; b=T8w43CCnPM+5uzh/LQrgJZDAPO
 OnSeuSXU/IPspH5/vMSMIUr3VsdbJNVfs9pE4voFc/FhDMGduFsYWlPovg6Wh6cLET+wk+3LYRcL8
 t+8B8/NLoQ9fKAAdJtIlSKldKf+nDiYb2IYJVolmV5tqe+lf3OC2ImgeQY7N0rVHE6xw=;
Received: from mail-qk1-f195.google.com ([209.85.222.195])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hcsO6-0019W5-Ln
 for jfs-discussion@lists.sourceforge.net; Mon, 17 Jun 2019 14:13:36 +0000
Received: by mail-qk1-f195.google.com with SMTP id c11so6221676qkk.8
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 17 Jun 2019 07:13:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=A4+NWm3uj2vW47hGvQEajXQiT2mH6czBZ2S5v1C4m2A=;
 b=J2TwOOg4uFCQ5V4sjkSOauUtMooFNdefA59sKPmvuUNK7uSEf0SZ+L5IAaapTkR9UL
 yNMfQbWCae/R7eO6yJQx08kaKyK9nqodzyBeiLkN4vhkUnyXe70EoUjNcrdpqlJodG9S
 f+lHajYvJsZVbdC71ETaVN3WF8wXjFeIt99fJj39Y1is4W7Sud8qA4s+JGODUveushr0
 LLagS2AZ2dXtSSgh4Cm8zja4ajiH4cX3+c4iS6LvT8eC+C3vhkcxFYytcnvPe2CfpkIK
 6AZ3JvVSGl/F4N3kTsTEGqAnllXGL90LpxkldHFtvQ4rVvO4SVXcEXLc6gHUM/2YJtcq
 Vaqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=A4+NWm3uj2vW47hGvQEajXQiT2mH6czBZ2S5v1C4m2A=;
 b=qXlJzQ/5jy/q0NjYKU8WF8Y4XU+SPEE01jlr2gF57I842h0j4vGluFjEmI71Bp1GWE
 eUqXCZYM/3i47PbRLwFXM4nQS5DpJ+VmzzldwhY7H5uQdE3JGgkVG4b5JBl1eGFyGHCm
 fRv3K5+vlrTJXj1tGUnEy/B2CKkKxW6hS6fl9dIKGxRiX+h580HCmINhHH9qEEhr/Vm5
 YWzBhShYVNxLfoR0gUr9RatWcxAIlthhERKIaQ4NoBhc7PeIAy11+/gGvUG9UIasJ8Cw
 V3EuoPl15I7x741uSY9bkuX3Nlf/mwLr7mJM/h/iJ/UMBirHTOccdMVBuF5EeA/ug/LJ
 l43Q==
X-Gm-Message-State: APjAAAVvDpCdoGCdyoZAxQXBsRtWWG1j+Lrz8zjScJyCwJMCRRH6bj9/
 3JibpjYNCtTR+J0FowknQxM=
X-Google-Smtp-Source: APXvYqy7osGY+vzxkDkQlaDeRn+XdHSIdKCAIm2+EfSROS9Q0KncFtK6lZof35B1QSLilLBCqoW2UA==
X-Received: by 2002:a37:68d2:: with SMTP id d201mr90585636qkc.65.1560780808643; 
 Mon, 17 Jun 2019 07:13:28 -0700 (PDT)
Received: from k8s-master.slicetest.com (kovt.soborka.net. [94.158.152.75])
 by smtp.googlemail.com with ESMTPSA id x7sm6917426qth.37.2019.06.17.07.13.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 17 Jun 2019 07:13:27 -0700 (PDT)
From: Kovtunenko Oleksandr <alexander198961@gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Mon, 17 Jun 2019 14:13:21 +0000
Message-Id: <1560780801-5364-1-git-send-email-alexander198961@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander198961[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.222.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (alexander198961[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hcsO6-0019W5-Ln
X-Mailman-Approved-At: Mon, 17 Jun 2019 14:43:55 +0000
Subject: [Jfs-discussion] [PATCH] set block device for dummy log . In this
 fix try to avoid null in the call bio_set_dev(bio,
 bdev) because in case bdev is null we have NULL pointer dereference ticket
 reference https://bugzilla.kernel.org/show_bug.cgi?id=203737
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
Cc: alexander198961@gmail.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

---
 fs/jfs/jfs_logmgr.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_logmgr.c b/fs/jfs/jfs_logmgr.c
index 6b68df3..3cd7026 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1223,6 +1223,7 @@ static int open_dummy_log(struct super_block *sb)
 		/* Make up some stuff */
 		dummy_log->base = 0;
 		dummy_log->size = 1024;
+         	dummy_log->bdev = sb->s_bdev;
 		rc = lmLogInit(dummy_log);
 		if (rc) {
 			kfree(dummy_log);
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
