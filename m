Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 279CD6F8487
	for <lists+jfs-discussion@lfdr.de>; Fri,  5 May 2023 16:10:49 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1puw8i-0000j7-2y;
	Fri, 05 May 2023 14:10:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <wonguk.lee1023@gmail.com>) id 1puw3t-00013r-1z
 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 14:05:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=OzqCiS98IPcP1NO5D+IvEvMY4nJyl5P4wSObXpEuRpY=; b=j7zI8Vyy6kTmM/7lTkX6cRmPDa
 wLmWCq4gqHcw5iC4G+uzK6eHfLw/P3IuRCE7/Z77DpmKEXP9lxN7FIw6i+pq5MWetKx78nCuGlLUw
 sNpbhDDGUzBZ4KUgysPwrtM7zjcpaDZ1wo1OhxqLR2+GgzI0cO30mMG3098xaEXZaGiM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Message-ID:Subject:Cc:To:From:Date:Sender:
 Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=OzqCiS98IPcP1NO5D+IvEvMY4nJyl5P4wSObXpEuRpY=; b=h
 Sj60EuXJQkTUerNsP4xeR46D9/ZXUK9d9rbjK71wmqZpKiI2LKmrmHNq96RV4AfS+NW6B2UXgyZY7
 oq5pL+Ij73mdSnx/Lq1JUwnlYaBkWpnOSi84uRaqH+tDG9sBO2xZvSXjWc9IvEQ65vFLEyRkGbYQf
 qlaLIXFEQ+3UR+b8=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1puw3r-00086v-96 for jfs-discussion@lists.sourceforge.net;
 Fri, 05 May 2023 14:05:28 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-1aaf21bb427so12946305ad.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 05 May 2023 07:05:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1683295521; x=1685887521;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=OzqCiS98IPcP1NO5D+IvEvMY4nJyl5P4wSObXpEuRpY=;
 b=bpKZtv/aAeervyGxt6hJ5jf921aCdGeuIvYwOlAd5vCAslhLMj/MEyeq4nHFL+hwf9
 ED3nywlxa2GqmtJzVdCCYkYFfTQbyYjyxi/X9ZTfV1I4Mo+9EfMKpZLpOs7mHh8zzymm
 Q2Ice9GsQhX4EXznSnL/NXKYywcPAn3hdgyRRyZO+VqbL4EZlAfjb7h0ssg/btxrvc2A
 Mnv54OYE3rQvoO7aMyIpUPQYpcXADGL5DM4hprWSse9L/pne+jutyCr0VaSw2wbf6k0B
 Ru+lG+TUTLDw7dQGZq+Mb6/IqYfmAnxjGLZzrBOlGedyIYwT/gJML71z2a0BzOWmTAB2
 ytdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1683295521; x=1685887521;
 h=content-disposition:mime-version:message-id:subject:cc:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=OzqCiS98IPcP1NO5D+IvEvMY4nJyl5P4wSObXpEuRpY=;
 b=GrUR0RO3JhrpUOytQTGqIm+sdkhUeNxY0fATfLXX/E/j4TICZuMDBZDYYoCJWiGrnE
 3pKTLnaYGoF5eh1es7sh1gmTkVx7qRs3JDduoheLsLTuXcR2fNNqTjPvKQyljvyU1lvd
 hLj63FRUoAIhMQVFnDduPB2YNHimFtPttrcGt/n4Iohyo1GYNy/nEFb5ZPDAbbl6WuR9
 eauOrTSAcMIZ3wdh+FG3ZEYWwOWbIX9rWx8LTuS6wua4/n8zp13Ag+0N1FB/z2FqQbui
 zwRhke6Q2bYUtflq7soDpuLbLfT8LRw2Jcrg1TZRjUXq61xJZ5IkVr1iZi5rSQUmsNCH
 JoRQ==
X-Gm-Message-State: AC+VfDyJTlh4R3UQs/hgz/6nGS3MsQdCbEGmAcH8kOQq5UFnJlrPFEUA
 Sx7SAClyyrOTvI3J/9lwFh7P5m6//bgtlA==
X-Google-Smtp-Source: ACHHUZ7gbOnhc9STpFgcE/bQM1D6CfRmVBGNlFt05nMCk6igeMsP4gD6F5LqP/inTAFAJLNeLb2hpw==
X-Received: by 2002:a17:902:f391:b0:1a1:dd2a:fe6c with SMTP id
 f17-20020a170902f39100b001a1dd2afe6cmr1275756ple.53.1683295521501; 
 Fri, 05 May 2023 07:05:21 -0700 (PDT)
Received: from ubuntu22-virtual-machine.localdomain ([211.218.36.103])
 by smtp.gmail.com with ESMTPSA id
 g5-20020a170902740500b001ab09f5ca61sm1822217pll.55.2023.05.05.07.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 05 May 2023 07:05:21 -0700 (PDT)
Date: Fri, 5 May 2023 23:05:16 +0900
From: Wonguk Lee <wonguk.lee1023@gmail.com>
To: shaggy@kernel.org
Message-ID: <ZFUNHFUr/IhyvTn9@ubuntu22-virtual-machine.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: While trying to fix the jfs UBSAN problem reported in
 syzkaller, 
 (https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2)
 I found the typo in the comment of dbInitTree function and fix it. 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [wonguk.lee1023[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [wonguk.lee1023[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1puw3r-00086v-96
X-Mailman-Approved-At: Fri, 05 May 2023 14:10:24 +0000
Subject: [Jfs-discussion] [PATCH v2] fs: jfs: (trivial) Fix typo in
 dbInitTree function
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
Cc: jfs-discussion@lists.sourceforge.net,
 linux-kernel-mentees@lists.linuxfoundation.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

While trying to fix the jfs UBSAN problem reported in syzkaller,
(https://syzkaller.appspot.com/bug?id=01abadbd6ae6a08b1f1987aa61554c6b3ac19ff2)

I found the typo in the comment of dbInitTree function and fix it.

Signed-off-by: Wonguk Lee <wonguk.lee1023@gmail.com>
---
Changes in v2:
  - Add the patch description and change the name in the Signed-off-by

 fs/jfs/jfs_dmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a3eb1e826947..d8a03d3026cc 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -3851,7 +3851,7 @@ static int dbInitTree(struct dmaptree * dtp)
 	l2max = le32_to_cpu(dtp->l2nleafs) + dtp->budmin;
 
 	/*
-	 * configure the leaf levevl into binary buddy system
+	 * configure the leaf level into binary buddy system
 	 *
 	 * Try to combine buddies starting with a buddy size of 1
 	 * (i.e. two leaves). At a buddy size of 1 two buddy leaves
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
