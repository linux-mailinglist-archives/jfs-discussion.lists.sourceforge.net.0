Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2B1792D353
	for <lists+jfs-discussion@lfdr.de>; Wed, 10 Jul 2024 15:46:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sRXeW-0004FB-69;
	Wed, 10 Jul 2024 13:46:35 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <rbrasga@uci.edu>) id 1sRLl5-00051c-N0
 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Jul 2024 01:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tSpW7AqjpwQU1YZlBwSC0jTPvLt58lOmnA2ZeLiWhSk=; b=Rvn2Eu8pLPMfEX+m68Jk8t4wl6
 2h+l4Bakku8QAB8E4CbDQtikjqRcbRGwHhOVPgIHUFDVHukHLHgUbqo5ItPZzVopyPLzcviFecc+O
 WOvKP067Zj6Qc4i3b4L2HPk+3l5u34mwpBHrcwpbWKRWcGcxxVyM/Ev6o84vONZvGiMI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tSpW7AqjpwQU1YZlBwSC0jTPvLt58lOmnA2ZeLiWhSk=; b=Z
 itvGxWcTJ1iRdLYZO3Qsroeb/yVMgFLu518NgyfJKORPHPlhtqoNzXQ74GPid9nADsXAb8QWlPAge
 g+wuypOomm1V4T/QzSNxSGPIHMRr7VfdpTQwHv1d1649LLY9iP8NZs0Pp/Ww+knpcnYN+JPddwi3X
 yaheom8GDJw3vNIc=;
Received: from mail-oi1-f173.google.com ([209.85.167.173])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sRLl6-0004Fx-55 for jfs-discussion@lists.sourceforge.net;
 Wed, 10 Jul 2024 01:04:35 +0000
Received: by mail-oi1-f173.google.com with SMTP id
 5614622812f47-3d92e65752dso151053b6e.1
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 09 Jul 2024 18:04:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=uci.edu; s=google; t=1720573465; x=1721178265; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=tSpW7AqjpwQU1YZlBwSC0jTPvLt58lOmnA2ZeLiWhSk=;
 b=L92Jq46VqRc9zsFAZyVhMmtftOtzMA/M2ijpmDygVUxbj7KoaF7664275c4y3qp/ve
 qSlENl9az8rbhQZmMmJikediJspwm790+3DVT7gFY8eOvTlVJbMOAYkUxGOVjkwrVCEP
 9r7GYrGCv3TbHDRx3/nNX8dFUdmXyD+YxUgIMIDo8qnw0xxly231BTk4uwlh7icbB80N
 RMCzndfG9Xv1kXhKYISuNoBvjt92VkcNxYRDCa9k3pzGzJ4k+AwLz0VQtvPsR+LNCbc5
 CPR9J9xeWrdKSCHssyS9Mb2UmWob+s9Tca1MugQ3+1wjG33eA7dVUQ7cGbUAg/S/vIPA
 jSmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1720573465; x=1721178265;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=tSpW7AqjpwQU1YZlBwSC0jTPvLt58lOmnA2ZeLiWhSk=;
 b=sy1bMbPssGrUoA23gd/MbzEPxfAX/6nR4Y6AyDSjk9dp9r7slUpROXVTFOiqlOCmm1
 lLoroLSYnNnEG0zImGAt92fDLrW34lfgqrkQLEVoGI69bpe+/WE4Ifs65n627BKZ1gEp
 VCWAwjLn8OIKrNdH/yf3RKZwHR6MlGV/8fJzby9x9U8PY2+dtVzhcvd4c4tCdNYlor46
 F/tmPhA5Y9Fku+qRTrxw7HKSCdrNuz0S+hTdFVhWGc01I9w8qH6eWdAQ/iD/ZYPb6AlA
 25XhwPV6DOzqhYfMjK/+F4szEYonxyZL3NgKecq3THttNCwWNzAF2W7GfdmW3Feki/gh
 wN3g==
X-Gm-Message-State: AOJu0YwWNABQGgKZtRdCl2JJRivplqo7PrKmnGHZ1hGpk3K21vXt1bud
 v02SpZArmVT7nmORVdDm8yx0xU84GqtTw+Ha0RJIX6Oma9zsFp1enuK1t4k4d9pSPvD1p/ZzjEC
 OfFI=
X-Google-Smtp-Source: AGHT+IFZ+U0vwKEkq0hOtvZ5jJDsUtmCIT4kTMkBa1V9TXiL/6L8Y3rUPlhGyo845hlJfZURvkiEMA==
X-Received: by 2002:a17:902:f7d1:b0:1f8:62a1:b6af with SMTP id
 d9443c01a7336-1fbb8019531mr41100765ad.21.1720570383350; 
 Tue, 09 Jul 2024 17:13:03 -0700 (PDT)
Received: from alpha.mshome.net (ip68-4-168-191.oc.oc.cox.net. [68.4.168.191])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-1fbb6a34f9esm21740765ad.114.2024.07.09.17.13.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jul 2024 17:13:02 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, Manas Ghandat <ghandatmanas@gmail.com>,
 Juntong Deng <juntong.deng@outlook.com>,
 Andrew Kanner <andrew.kanner@gmail.com>,
 Osama Muhammad <osmtendev@gmail.com>,
 Shuah Khan <skhan@linuxfoundation.org>
Date: Wed, 10 Jul 2024 00:12:44 +0000
Message-Id: <20240710001244.2707-1-rbrasga@uci.edu>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Fix issue with UBSAN throwing shift-out-of-bounds warning.
 Reported-by: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com
 Signed-off-by:
 Remington Brasga <rbrasga@uci.edu> --- When nb = 32, `mask = mask >> nb`
 or shorthand `mask >>= nb` throws shift-out-o [...] 
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.167.173 listed in list.dnswl.org]
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.167.173 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: uci.edu]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.173 listed in wl.mailspike.net]
X-Headers-End: 1sRLl6-0004Fx-55
X-Mailman-Approved-At: Wed, 10 Jul 2024 13:46:35 +0000
Subject: [Jfs-discussion] [PATCH] jfs: UBSAN: shift-out-of-bounds in
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
From: Remington Brasga via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Remington Brasga <rbrasga@uci.edu>
Cc: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com,
 jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org,
 Remington Brasga <rbrasga@uci.edu>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Fix issue with UBSAN throwing shift-out-of-bounds warning.

Reported-by: syzbot+e38d703eeb410b17b473@syzkaller.appspotmail.com
Signed-off-by: Remington Brasga <rbrasga@uci.edu>
---
When nb = 32, `mask = mask >> nb` or shorthand `mask >>= nb` throws
shift-out-of-bounds warning.
`mask = (mask >> nb)` removes that warning. 

Link to the syzbot bug report: https://lore.kernel.org/all/0000000000006fc563061cbc7f9c@google.com/T/

 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..636aae946e84 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3020,7 +3020,7 @@ static int dbFindBits(u32 word, int l2nb)
 
 	/* scan the word for nb free bits at nb alignments.
 	 */
-	for (bitno = 0; mask != 0; bitno += nb, mask >>= nb) {
+	for (bitno = 0; mask != 0; bitno += nb, mask = (mask >> nb)) {
 		if ((mask & word) == mask)
 			break;
 	}
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
