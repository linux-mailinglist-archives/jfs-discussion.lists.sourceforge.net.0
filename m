Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7668F98CEDC
	for <lists+jfs-discussion@lfdr.de>; Wed,  2 Oct 2024 10:37:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1svurT-0003y4-Eh;
	Wed, 02 Oct 2024 08:37:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dan.carpenter@linaro.org>) id 1svurS-0003xX-0s
 for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 08:37:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lwtFbtkd183rpnaZw+BKnFd/0fPS/fmbq3h2h43pXac=; b=RQMz9NdyZrb3zXJiAuR85PRRqe
 J8WdtDTLyw14ivvfYglsVT04fyT3/4SKz9pJ3ePRYC9M2/no8+wj5B/GqvQ3/fDMNvEDPMgrCP6XS
 0MFpGW3fFt6ZFBU7WsUfPR0/ZsY1Yhs+rUGC5bzopPYtzRZh67QbDgifBlGY3/feKPdI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=lwtFbtkd183rpnaZw+BKnFd/0fPS/fmbq3h2h43pXac=; b=V
 kh6Y8A8MA0S65t7ex0bj+z+GRag/0368Oq9nd753fYKPVO+NIgjp3hceFXdKu/EbfcFN7t70RmNpF
 rbZEa/zALdrHtEIvL9hkXUYaLDzyo84bzEf/N06mZZ8nHUbSpbOalV7s96wa2kGINiYR6qTZs1jLB
 W8DCDXuwtbBpdtHY=;
Received: from mail-wm1-f54.google.com ([209.85.128.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1svurR-0001AV-UX for jfs-discussion@lists.sourceforge.net;
 Wed, 02 Oct 2024 08:37:30 +0000
Received: by mail-wm1-f54.google.com with SMTP id
 5b1f17b1804b1-42cb57f8b41so78900225e9.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 02 Oct 2024 01:37:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linaro.org; s=google; t=1727858243; x=1728463043; darn=lists.sourceforge.net;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lwtFbtkd183rpnaZw+BKnFd/0fPS/fmbq3h2h43pXac=;
 b=mM9/5VjHTs9nWI4E/+Io5/p155yRrdy4x8rzdPQfJBQSUZMOW1BUU55Mn4mbhWFwHP
 +L9nLd4pG6Uy9aqRNf9I5gfjZ2DEpX7b44z5/cfxXJf5EpPRcPdLnWz6Eyg+lifInegR
 zzTmO0+Kk1vWKQgBwMWKhK2NF3tqkIVMopvRLu4wuTuAQi08C0gixJ5EJP7P6X+5AG2d
 fCewTNWCjOtUQA7HDM20VTTSx3B0muaUtwr6TvMTQOstUihxH+zlZjI0k6oVIjQNSxE/
 h3DS8vZr3dyB0QrAAMUUcEKcK+cSOsufBAj9fucLzO9ed0on+c8aEn9ZREYuaPlPmQ8A
 WyEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1727858243; x=1728463043;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=lwtFbtkd183rpnaZw+BKnFd/0fPS/fmbq3h2h43pXac=;
 b=bQupRBCrIKcXKGzPvzYr2kAYwmuOSpF+9GLFIjAmaZ7ubZsA4QOnrrNLmj2IMm8bHh
 NXbWEhl2zIZKNieeeHltdSymAuJHBGbY6HsdaWwPHd1f6WSsrum8lS1QcopsvHb0AC4a
 txthQ263ZByCiDSk0RDjwxkQTfFjgfj9QBtN2RTW3Tzjx5WfAxRLKvn8mD7VXM4t4cgp
 YL9IOrhkFIh+c2OiR7wrtQasEkc+ffw/7h08U2ObLRiU4vp3AAoGhi3rEEYTumUmARU+
 7FjsE+vgDaarxey3ikYX4h4YWxDrNVsqLDZj9PuDHxQULYbobQJ4JQmR+iqPnNB1nRpf
 3tEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWP5AvMwVnLKLVDOxxGpgCvp6XCngC1pFp8vcwnllz4MbX0Zz9lvmVvVT5N7+W8VRo9dNQ8tWEKzu4dOLDlBQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YywnvCZhLUOoUhlDVovf9xhLEJHCeYrwDUl/m5kgaZEFUJAke8Z
 2Hj6nXRrKUCGFyw7lK51BEguurC5qoeRMQUNHWfHp+65j69PbrBrAc9dfxfklYI=
X-Google-Smtp-Source: AGHT+IFyXIGgjS4nrzyGishoIwlJ0/HhWx4Q7ZAnaJaIoZpCox8FMcIDZsRd08onTWLvZez1AhemTw==
X-Received: by 2002:a05:600c:350f:b0:42c:b8c9:16b6 with SMTP id
 5b1f17b1804b1-42f777b1f87mr21363975e9.2.1727858243109; 
 Wed, 02 Oct 2024 01:37:23 -0700 (PDT)
Received: from localhost ([196.207.164.177]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-42f79c67c5csm12578895e9.0.2024.10.02.01.37.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Oct 2024 01:37:21 -0700 (PDT)
Date: Wed, 2 Oct 2024 11:37:13 +0300
To: Eric Sandeen <sandeen@redhat.com>
Message-ID: <12768f55-47e6-4bfa-aa63-0a82b911e098@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: This is just a small white space cleanup. The conversion to
 the new mount api accidentally added an extra indent on these lines.
 Signed-off-by:
 Dan Carpenter <dan.carpenter@linaro.org> --- fs/jfs/super.c | 4 ++-- 1 file
 changed, 2 insertions(+), 2 deletions(-) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.54 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1svurR-0001AV-UX
Subject: [Jfs-discussion] [PATCH] jfs: Delete a couple tabs in
 jfs_reconfigure()
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
From: Dan Carpenter via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Dan Carpenter <dan.carpenter@linaro.org>
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, kernel-janitors@vger.kernel.org,
 Amir Goldstein <amir73il@gmail.com>, Jeff Layton <jlayton@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Chengming Zhou <zhouchengming@bytedance.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

This is just a small white space cleanup.  The conversion to the new
mount api accidentally added an extra indent on these lines.

Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 fs/jfs/super.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/jfs/super.c b/fs/jfs/super.c
index 223d9ac59839..508666d4ed01 100644
--- a/fs/jfs/super.c
+++ b/fs/jfs/super.c
@@ -389,8 +389,8 @@ static int jfs_reconfigure(struct fs_context *fc)
 
 		if (!ctx->newLVSize) {
 			ctx->newLVSize = sb_bdev_nr_blocks(sb);
-				if (ctx->newLVSize == 0)
-					pr_err("JFS: Cannot determine volume size\n");
+			if (ctx->newLVSize == 0)
+				pr_err("JFS: Cannot determine volume size\n");
 		}
 
 		rc = jfs_extendfs(sb, ctx->newLVSize, 0);
-- 
2.45.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
