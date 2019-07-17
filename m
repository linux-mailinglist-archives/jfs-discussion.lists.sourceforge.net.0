Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 101AB6C90E
	for <lists+jfs-discussion@lfdr.de>; Thu, 18 Jul 2019 08:05:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1hnzWw-0002sg-3j; Thu, 18 Jul 2019 06:04:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <alexander198961@gmail.com>) id 1hnzWu-0002sK-Hu
 for jfs-discussion@lists.sourceforge.net; Thu, 18 Jul 2019 06:04:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 MIME-Version:Content-Type:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s7CXeF8uvBKnNU0aV0PhameaA3sT+h57hx3g24HEe2U=; b=SH/ZMidzDLNA40To5NQSXBjCkE
 BdcF0HoKXQOe5uZDZvF6vDmkqp2i+CLoVBZzKxjyIdE43iAUKTlfjxdJOu2U9BzBx+9CyCpVvbnUu
 teNkvfKgeEE9AonA5hYRrpjxBgd9bM3Y4SPFh/jYFk3MR+ZGlGWSnrKjitB9S8eWzyls=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:
 Content-Type:Content-Transfer-Encoding:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s7CXeF8uvBKnNU0aV0PhameaA3sT+h57hx3g24HEe2U=; b=lKjXYJdMRdZw9wLB/7R7WxzmR3
 wgM6wkyUVn0siCu0x8e19kkHBHosc1iHdvO38GLCOM5cc/oft5T22S21oEZxLWnjfzzKoT2sFqtUW
 2QPw/mBNuSNiJKMvQbftTyLjeBjY+zEK6HbM40haX+QBPKFkYv9Vzxwlta25wj/C50D8=;
Received: from mail-qt1-f193.google.com ([209.85.160.193])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1hnzWs-005yNA-Em
 for jfs-discussion@lists.sourceforge.net; Thu, 18 Jul 2019 06:04:36 +0000
Received: by mail-qt1-f193.google.com with SMTP id r6so21773534qtt.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 17 Jul 2019 23:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=s7CXeF8uvBKnNU0aV0PhameaA3sT+h57hx3g24HEe2U=;
 b=tLPXq7XrsYVgQigVAOJiBXuul4CBsKrMICZCKovCK44Ov5zeezEwUScV326bhHtdJ7
 gmrrc0pTRuUABFxdKGxNtBBe4GhKDSOQF9ujQTQkEtJz+NtgnIgzqLKyxcjDe5an6qTy
 jhEnNgp/Mjqd0ZnEiMu94xmdX48ujqe4U7PJSRsLBxQXBMh8R/6El7/G88a2V3cbkqsC
 Woh+q3GDc9/Brhf+DUj6sPN9MugKmhUbL+hs2t5WnjTajja6E//HEh8/dDPtHA/Lusa4
 dDWavsoZYZJSlOHjrUJ59m+tIt0RR0at2gGOpvkA8k+chVNPiIbso8uEsml5RxRmq1jy
 RepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=s7CXeF8uvBKnNU0aV0PhameaA3sT+h57hx3g24HEe2U=;
 b=nn5Qud+A3v0LEbVCuNR1PkQABXCQu2PfXDD3GeqIpI0GWfqCbnWiHsxO8zLTQtOm7Z
 tHRa4Dl4qejk16jazatnGecLmGddWGBEKg6VLmm8pdMY3l87CFGyX8ZNjiovBV/ku53Y
 zNMuxWDGpOaUhHSWDaauRDUo4gwukKuGIE7qzsKzmsruMD7P2/U4KN4JShUySZJT+TcB
 4Iit1/PH767qr7cmgau5WVQvyuOdmV5qGgqb7MRuJvkr9rVtsGTVhQ865VeYxVnyFLX2
 e27ujdOK7+qReov7PyHddpikMPnmOjbIrKF0uLJyKnDVz+34mupJUk6xTcurdftLJEhV
 i85w==
X-Gm-Message-State: APjAAAXHA9EzfzA6CRYQTZUxg1geUXAR/pGIrTt9u/yBe1RY8DIrYPBj
 3qu4fo6jvvssEqKQWDUsYlQ=
X-Google-Smtp-Source: APXvYqzYIUatZiQ88JgMXznb7BmGeGoORVj6WzuMUstkNhdu0jSUZcv4xnSY1iqHI+C6yWxwEWQdDQ==
X-Received: by 2002:aed:222d:: with SMTP id n42mr30703133qtc.144.1563429868394; 
 Wed, 17 Jul 2019 23:04:28 -0700 (PDT)
Received: from k8s-master.slicetest.com (kovt.soborka.net. [94.158.152.75])
 by smtp.googlemail.com with ESMTPSA id p59sm12527196qtd.75.2019.07.17.23.04.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 17 Jul 2019 23:04:27 -0700 (PDT)
From: Kovtunenko Oleksandr <alexander198961@gmail.com>
To: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Date: Wed, 17 Jul 2019 08:04:50 +0000
Message-Id: <1563350690-7734-1-git-send-email-alexander198961@gmail.com>
X-Mailer: git-send-email 1.8.3.1
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (alexander198961[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.160.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.193 listed in wl.mailspike.net]
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit (alexander198961[at]gmail.com)
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1hnzWs-005yNA-Em
Subject: [Jfs-discussion] [PATCH] fix null pointer bugzilla 203737 . wich is
 triggered in function bio_set_dev(bio,
 bdev) in case bdev is null Signed-off-by: Kovtunenko Oleksandr
 <alexander198961@gmail.com>
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
index 9330eff..c2fcaa0 100644
--- a/fs/jfs/jfs_logmgr.c
+++ b/fs/jfs/jfs_logmgr.c
@@ -1209,6 +1209,7 @@ static int open_dummy_log(struct super_block *sb)
 		/* Make up some stuff */
 		dummy_log->base = 0;
 		dummy_log->size = 1024;
+		dummy_log->bdev = sb->s_bdev;
 		rc = lmLogInit(dummy_log);
 		if (rc) {
 			kfree(dummy_log);
-- 
1.8.3.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
