Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 363134FBF0C
	for <lists+jfs-discussion@lfdr.de>; Mon, 11 Apr 2022 16:26:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nduzE-0006IW-Oe; Mon, 11 Apr 2022 14:25:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <r33s3n6@gmail.com>) id 1ndrYV-0001QK-H9
 for jfs-discussion@lists.sourceforge.net; Mon, 11 Apr 2022 10:45:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cgk0yjKGyZZ3WohS+RmN42unOs/YYInKeZtRcK9rHyc=; b=apM14kVt8EMnGM8vY11j44vMcr
 Y7//Tay4EvIqQ9I0zWIFkyCk8uC3eKZ9Dx/1WH6ttCSnqt/W6zPo8NMKdHTOrSw6o0cMMNLzJwF6o
 VZi9jFUlcuaKc3LFtEM3f9w7pzckYykHwcjpaMuT1Ki5WkoUCEeTYLh2gHiePG1SFjXA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=cgk0yjKGyZZ3WohS+RmN42unOs/YYInKeZtRcK9rHyc=; b=H
 fkU/JvnAbeLI98IAjMjFx6wCfUBMtt7VQqufTozCN5rqgMOSZORZkRS+lNXypgHAsPjWHB0hgIzba
 JVLNBo6KDWQCQL0HN/Igl+aaGaBMwRhQAHOFgZoDbM9jdw/nTw4AbI33RkHaw3FqKjingt81ODXSk
 Bf/Ev+yXlsmsSoKs=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1ndrYR-0001i9-0h
 for jfs-discussion@lists.sourceforge.net; Mon, 11 Apr 2022 10:45:58 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 b2-20020a17090a010200b001cb0c78db57so13179587pjb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 11 Apr 2022 03:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgk0yjKGyZZ3WohS+RmN42unOs/YYInKeZtRcK9rHyc=;
 b=gR7aCeFK8v+Ud8TJUkbFoMyayQnEYDODrBnCfGbeG+zb/RynV+cSpzceKrCZ5wMykZ
 dmJ1GCm/a3zMbg2EZrRMFm9rFK6SfVp585WTnBPAGnRhFkFdxq/Fi6o8ahj9YNhlKa1k
 tYejK/UOqD1IWv4LiIG72TIA0oT0endbHK/XAj4Qt5hlG//asSja7TYXrYOdBaV+iH83
 Rs25nlpMwGJPWu+zM9ND3b8btzxciDcXgK4kFstlGu73V49WeVebIlsbvkHUSjbBsKeA
 VtuJyupg7BJOt8WIbFjM8OU8zt8gOg2WqRrHL9HNKC9GbrXj+kAibXOjG67rBu6KlGvW
 V1mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=cgk0yjKGyZZ3WohS+RmN42unOs/YYInKeZtRcK9rHyc=;
 b=T4feoq2jLT3UeCUeGyDgdikXYRo8lBO8bJTBhfmma0r7Tlt5tOMMZCFDEw8rFcjjJm
 rF0fFL0YXrBB9bTDcKArsbNm23/5hwyfuOM5K/UtCjBFA3AtV7aJ1XTPorBH6/7++xCP
 /MaRo38AG8H2+z3hIj5H0t8D8FXNYJo12Eui4amqY+e80BvSemws3UY0ETKSwJDLa9Uy
 X+LAubNSCJavUWF1b6szQ7nlo78+5hKZqHHCOnzDBkbXQRTReMYnRIIQ3d/hl9CHWIyk
 Oj9EUtOKDOwQYG3iy2Zk3cN64xXYhHd1JONfMOVxCPtrnqv2Z8KlUUbtxkTUQLDK7hLY
 FxWQ==
X-Gm-Message-State: AOAM530bIJRDhfaXpso1IG3rw6lmkRrmdW65LKnEnDIrCiwOw6jatQQG
 KWaOKiWZurXDJrmQWZejX9A=
X-Google-Smtp-Source: ABdhPJzw3WifQ58vmxssYy00TXa8ner2CIBlECSTkKcTdxtfk4IL9t+EkZ1GK3YfBLY9hzTzhgfAFA==
X-Received: by 2002:a17:902:e74c:b0:158:5c47:9181 with SMTP id
 p12-20020a170902e74c00b001585c479181mr5317652plf.144.1649673949337; 
 Mon, 11 Apr 2022 03:45:49 -0700 (PDT)
Received: from fuzzserver.tsinghua.edu.cn ([166.111.139.106])
 by smtp.gmail.com with ESMTPSA id
 s10-20020a63a30a000000b003987eaef296sm29086232pge.44.2022.04.11.03.45.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Apr 2022 03:45:48 -0700 (PDT)
From: Zixuan Fu <r33s3n6@gmail.com>
To: shaggy@kernel.org
Date: Mon, 11 Apr 2022 18:45:34 +0800
Message-Id: <20220411104534.744772-1-r33s3n6@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In our fault-injection testing, the variable "nblocks" in
 dbFree() can be zero when kmalloc_array() fails in dtSearch(). In this case,
 the variable "mp" in dbFree() would be NULL and then it is derefe [...] 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [r33s3n6[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [r33s3n6[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.51 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ndrYR-0001i9-0h
X-Mailman-Approved-At: Mon, 11 Apr 2022 14:25:47 +0000
Subject: [Jfs-discussion] [PATCH] fs: jfs: fix possible NULL pointer
 dereference in dbFree()
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
Cc: Zixuan Fu <r33s3n6@gmail.com>, jfs-discussion@lists.sourceforge.net,
 baijiaju1990@gmail.com, linux-kernel@vger.kernel.org,
 TOTE Robot <oslab@tsinghua.edu.cn>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In our fault-injection testing, the variable "nblocks" in dbFree() can be
zero when kmalloc_array() fails in dtSearch(). In this case, the variable
 "mp" in dbFree() would be NULL and then it is dereferenced in 
"write_metapage(mp)".

The failure log is listed as follows:

[   13.824137] BUG: kernel NULL pointer dereference, address: 0000000000000020
...
[   13.827416] RIP: 0010:dbFree+0x5f7/0x910 [jfs]
[   13.834341] Call Trace:
[   13.834540]  <TASK>
[   13.834713]  txFreeMap+0x7b4/0xb10 [jfs]
[   13.835038]  txUpdateMap+0x311/0x650 [jfs]
[   13.835375]  jfs_lazycommit+0x5f2/0xc70 [jfs]
[   13.835726]  ? sched_dynamic_update+0x1b0/0x1b0
[   13.836092]  kthread+0x3c2/0x4a0
[   13.836355]  ? txLockFree+0x160/0x160 [jfs]
[   13.836763]  ? kthread_unuse_mm+0x160/0x160
[   13.837106]  ret_from_fork+0x1f/0x30
[   13.837402]  </TASK>
...

This patch adds a NULL check of "mp" before "write_metapage(mp)" is called.

Reported-by: TOTE Robot <oslab@tsinghua.edu.cn>
Signed-off-by: Zixuan Fu <r33s3n6@gmail.com>
---
 fs/jfs/jfs_dmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index d8502f4989d9..e75f31b81d63 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -385,7 +385,8 @@ int dbFree(struct inode *ip, s64 blkno, s64 nblocks)
 	}
 
 	/* write the last buffer. */
-	write_metapage(mp);
+	if (mp)
+		write_metapage(mp);
 
 	IREAD_UNLOCK(ipbmap);
 
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
