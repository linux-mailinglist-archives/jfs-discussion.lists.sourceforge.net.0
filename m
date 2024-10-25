Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6608F9B0817
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Oct 2024 17:25:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1t4MBq-00044p-GA;
	Fri, 25 Oct 2024 15:25:26 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <zoo868e@gmail.com>) id 1t4MBo-00044h-QR
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 15:25:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JFXeo8/I5ZSuSmBjM2oOfVhjv5mq57dZ19wKVuXleow=; b=al74Awvp3dHNfG2mGhwECfXGe3
 HAuwOi6H/WZ772rmhGF4RA4HlswZIyOC3zjDEijyvJeKL50v7K9wW5MU067LYTz0byxbvWxQLPkBI
 kY0rFavBgM1NZxxnydFQFvc+iQ5wmoTjX1XxmPX6C8jwa6fY88xv728YmlZpbGpAzWbc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JFXeo8/I5ZSuSmBjM2oOfVhjv5mq57dZ19wKVuXleow=; b=KLLBGIKESa7B+cVM/SSecZUAh9
 e/LYN5SFZwBQ30Y4uqmkB+GDksv5wsQwIDeljR1UQ9T+vWQkf324bNj8QiCr4IWxhexhp1+6g9qL/
 my6zBA6e8v11UvQd9DpbXXneTVxRYNaUcx11aPPethkfyKa2qykgO2K6iMK8rX7omtm8=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1t4MBm-00019P-5Y for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Oct 2024 15:25:23 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-20cbca51687so18994805ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Oct 2024 08:25:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1729869916; x=1730474716; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=JFXeo8/I5ZSuSmBjM2oOfVhjv5mq57dZ19wKVuXleow=;
 b=Tp3KTsJyKzDgqAwKDoO/VY679Ai7EBG4eiUDoaN8Wh0eivodJoxYTW1uRHIUcxRSy9
 QVe5RMb6Xgaca2HpzMHN49tOHvZRQiQB17iOppGTQa/Mkv3mpzQVOqYV+yNmmAj5Lmp5
 z/ZC7UWCxU52243gHHBTW4oGxNHrd/VbVAk3GP96aXwByZ6zV+9e9ABzA7fh8MMK6j18
 Uk9VaxM+O2gGG+Ml5FqFf/yVJ466/J9pB8F4dTrJrKUhvbSO+jaShjEmcGVEoJ5cGcaG
 o8j81E0Y7V9+R8bGez1Y/R2QzyPp12H+Q27TJciSEBwWdbSQW+V5Tluk1QhAXv0NDugi
 4OQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1729869916; x=1730474716;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=JFXeo8/I5ZSuSmBjM2oOfVhjv5mq57dZ19wKVuXleow=;
 b=bP2KEOmfwp2wGjmcRHMhq5+lwMiBrsxlOU+ShyvtqKt9RLuhFARzdJ4VccfFTk4uaP
 knKNtGhDbyQJXsYYhWAaJXQ7fogZyZdFhB7y4Twmb+7zuy4uVdWskGNXGqBNt52SN/X1
 1yxXdbm6+n3OwnXhd560kKpP5/9MmR+ud1NQmRQzAwNVGih+kEafekYWWMT3Jxbizwnd
 nmz+/HcZTVGYDF1K7f7aQwnSF7SiU9AU1Q9gBSduO0e/gM1+5ZBw5ySKI96n7pb6UIyY
 PKiFSX/JYBf4Ds1li3L/ccOz986Kn3TMvMVmNOi+QPxvBNJVV+z1LY6TYAXcSFpLNSfz
 QW+A==
X-Forwarded-Encrypted: i=1;
 AJvYcCVTRq7qA4uqCyKFY2BP/tEpRMv/3Oa+1bar3N5EARo1vNAqP/07rjqI/mNxv94iAuqPGDgH9ZVNzC159hS7Hw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YxoRZjc1nzqYbMVQei4AFDsRJLjtvMaiBjk7hFLqHDVRjD+KbJp
 2FrtsBcvs9tkhg7exmiHowSzNclbkoTS9VTankfOXoLwe8ozleeB
X-Google-Smtp-Source: AGHT+IHzjCi6zjSBygdsDkNmJ6tFYS3/lnJ4kMlhURm+u9y8ACOWIxEtCPG5z40xCu4MBUYeOmt50g==
X-Received: by 2002:a17:903:2441:b0:20c:8331:cb6e with SMTP id
 d9443c01a7336-20fa9e2b2f3mr140776935ad.19.1729869916409; 
 Fri, 25 Oct 2024 08:25:16 -0700 (PDT)
Received: from TW-MATTJAN1.eu.trendnet.org (61-216-130-235.hinet-ip.hinet.net.
 [61.216.130.235]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-210bbf6d10esm10606075ad.70.2024.10.25.08.25.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2024 08:25:16 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, Shuah Khan <skhan@linuxfoundation.org>
Date: Fri, 25 Oct 2024 23:24:59 +0800
Message-Id: <20241025152459.485-1-zoo868e@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
References: <671b3f75.050a0220.2eb763.00d7.GAE@google.com>
MIME-Version: 1.0
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: The starting bit number of free bits should not be >= 32 as
 it is 0-indexed.Assert that the number of bits is < 32, or if it is 32, the
 input word must be 0. #syz test Reported-by:
 syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
 Signed-off-by: Matt Jan --- Changes in v2: Test if the patch resolve the
 issue through syzbot and reference the reporter. 
 Content analysis details:   (-1.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [zoo868e[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.7 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
X-Headers-End: 1t4MBm-00019P-5Y
Subject: [Jfs-discussion] [PATCH v2] jfs: UBSAN: shift-out-of-bounds in
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

The starting bit number of free bits should not be >= 32 as it is
0-indexed.Assert that the number of bits is < 32, or if it is 32, the
input word must be 0.

#syz test

Reported-by: syzbot+9e90a1c5eedb9dc4c6cc@syzkaller.appspotmail.com
Signed-off-by: Matt Jan <zoo868e@gmail.com>
---
Changes in v2: Test if the patch resolve the issue through syzbot and
reference the reporter.

 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 974ecf5e0d95..b9eccf8900eb 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3015,7 +3015,7 @@ static int dbFindBits(u32 word, int l2nb)
 	/* get the number of bits.
 	 */
 	nb = 1 << l2nb;
-	assert(nb <= DBWORD);
+	assert(nb < DBWORD || (nb == DBWORD && !word));
 
 	/* complement the word so we can use a mask (i.e. 0s represent
 	 * free bits) and compute the mask.
-- 
2.25.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
