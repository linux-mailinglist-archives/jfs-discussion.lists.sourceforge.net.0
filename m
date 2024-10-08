Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ADD7995C9A
	for <lists+jfs-discussion@lfdr.de>; Wed,  9 Oct 2024 02:59:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1syL2T-0001iy-H7;
	Wed, 09 Oct 2024 00:58:54 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <niharchaithanya@gmail.com>) id 1syGmG-0002Uh-6c
 for jfs-discussion@lists.sourceforge.net;
 Tue, 08 Oct 2024 20:25:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fHFfcjP7e63aVrsj9S3xIwQfv9rNqIN8h79VM6VgqSw=; b=S9M4O+9Cp9Ghf+qs306XAp32fk
 6FO1D3iUDDYmLCxiKMkO4+xUmdfU5I8iz/8h8/3gLOayIpDloq0CwB6+ygY7YEg75efLAnwNfxUKP
 A6f8Oz2AklAyeAOdgLwgaqjdH9HMMwpRWPJrE6K4aVdkFJfhrPnKz251qg3NQcxUCTJ4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fHFfcjP7e63aVrsj9S3xIwQfv9rNqIN8h79VM6VgqSw=; b=i
 pigmaDIwGxZ/LJo7FC5sOVOg/mzcz43Nnrm11068O/VLe2xdHgbrrVZMR1JY0JxVt2WYe3XE9Hy5y
 fwVRccQdl8Ay26xsrZeeEPm5zLdsfBcHMsoBgMIg0cnJr2b5UMF0tXWdl1tigBVskPfV3AVsfejuG
 CbwJE4C6DH+PMPZw=;
Received: from mail-pl1-f179.google.com ([209.85.214.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1syGmG-0000JP-AQ for jfs-discussion@lists.sourceforge.net;
 Tue, 08 Oct 2024 20:25:52 +0000
Received: by mail-pl1-f179.google.com with SMTP id
 d9443c01a7336-20c5ff7df98so443515ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 08 Oct 2024 13:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1728419142; x=1729023942; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fHFfcjP7e63aVrsj9S3xIwQfv9rNqIN8h79VM6VgqSw=;
 b=ahxCCtmaT7jIBeODGBUeSLGtFnAEOiyyBYo1cFsl4RYxkczEmeGWE3r92lfRtkuidJ
 2Xwq84Vm1R/h+mZVPOhzXKgz2cl8fzxFIgEB5ZxyhH5QtNQTSi0ZvUtoTtQgtQuPAS+6
 ROppUX+DEqJHQthRm4AtPRTD7X0QsgQOG1ZE+/kpXmKPoFgB2HJ3k3GnVuVzXvfl/I2r
 5vTsC2Rojz9ya+w7SUQ2UcGVP+aIAFopMaVRex5S5QUZbWVpiq/hFV6m2RSWSmwewj3W
 zOgEg8aY4nAOB0o3B0yq4aYONbuZfS7ifIsVGNn43NXZpct5aaNi7M4qZeajyzrQGz6l
 wKYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1728419142; x=1729023942;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fHFfcjP7e63aVrsj9S3xIwQfv9rNqIN8h79VM6VgqSw=;
 b=XLfirP/xrpUNn5TpTDDvgjtlnNBq5Kv09NeqD7zGhVSSq6oUyniyARcgnL6M58kxjU
 ZV9u0tNujh7pyp2/AaT35WEI91Hab91bzBb2FocC1fxxBKOnqFMffiiomK+MZjQEUX4y
 U5byhhDZqQ9OdhFM7hJ+eNOg1bD2TRXsdWg0K9Z5LNWVuPzKYZ1QGL6NS2aqCvvt7ya/
 TSc11yASHw8njto5A4o7t3a6UAQocXxUA8i7F29Twrus+14PV77c8o/67Lu+WO7CD/tE
 Sd5um2WY4g6WhZP5NNXJzaERSX+ZN+oAMxr+IiB/v/1UfRd9R6cIGTp7xmjfcM4tYbGi
 ui8g==
X-Gm-Message-State: AOJu0Yxq616pzJvSK4cipqKgyuIO1IWy4QdKbfoAWwcbsLx3PE+/FJqi
 WEPaq/7fJsxHbZAjhDt2iK8uxYNKwvoQkpuDtcGHQfDK677zguJo
X-Google-Smtp-Source: AGHT+IFODThhy7hNypCxLh2wteGm9CvuNfcjriQqFrwNXwNktxCk0xzdBP2KCGYk7wxShucokLRKTA==
X-Received: by 2002:a17:903:18a:b0:20b:7a2d:c543 with SMTP id
 d9443c01a7336-20c6358f83cmr1687775ad.0.1728419141603; 
 Tue, 08 Oct 2024 13:25:41 -0700 (PDT)
Received: from ice.. ([171.76.85.17]) by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-20c62f11757sm1054145ad.19.2024.10.08.13.25.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2024 13:25:41 -0700 (PDT)
To: shaggy@kernel.org
Date: Wed,  9 Oct 2024 01:51:38 +0530
Message-Id: <20241008202137.8577-1-niharchaithanya@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: When the value of lp is 1 at the end of the iteration in the
 for loop, lp is modified in the next iteration to a negative value. Add a
 check to prevent this condition. Reported-by:
 https://syzkaller.appspot.com/bug?extid=412dea214d8baa3f7483
 Tested-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com
 Signed-off-by: Nihar Chaithanya --- fs/jfs/jfs_dmap.c | 6 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.179 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [niharchaithanya[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1syGmG-0000JP-AQ
X-Mailman-Approved-At: Wed, 09 Oct 2024 00:58:52 +0000
Subject: [Jfs-discussion] [PATCH] jfs: add a check to prevent
 array-index-out-of-bounds
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
From: Nihar Chaithanya via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Nihar Chaithanya <niharchaithanya@gmail.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-bcachefs@vger.kernel.org,
 syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, Nihar Chaithanya <niharchaithanya@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

When the value of lp is 1 at the end of the iteration in the for loop,
lp is modified in the next iteration to a negative value.
Add a check to prevent this condition.

Reported-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=412dea214d8baa3f7483
Tested-by: syzbot+412dea214d8baa3f7483@syzkaller.appspotmail.com
Signed-off-by: Nihar Chaithanya <niharchaithanya@gmail.com>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 5713994328cb..3ebb2dfdd0b3 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2911,6 +2911,12 @@ static void dbAdjTree(dmtree_t *tp, int leafno, int newval, bool is_ctl)
 		 */
 		tp->dmt_stree[pp] = max;
 
+		/* check to prevent negative value of lp on the
+		 * next iteration.
+		 */
+		if (lp == 1)
+			break;
+
 		/* parent becomes leaf for next go-round.
 		 */
 		lp = pp;
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
