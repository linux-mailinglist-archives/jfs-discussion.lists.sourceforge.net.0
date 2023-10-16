Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 976557CB145
	for <lists+jfs-discussion@lfdr.de>; Mon, 16 Oct 2023 19:22:52 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qsRIa-0003r8-5j;
	Mon, 16 Oct 2023 17:22:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qsRIY-0003r1-MU
 for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 17:22:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fzazQLMiElf0E2rTzrIHqd72McOV2ajmxD+aMmf7vqY=; b=Zsqv2OS+zXfgYGctND/vJ2inOx
 cw+vRIqSo6B3uVrV8Rd3fUsxXlMtx/7gioFVavXwoiMOC/62Kx9L3hNWFJ+Od/AmiE74djJNAoMQC
 TkMOJXJZfVZRKye++KxrUdoVsvebrnYJkifeDDk1KOrz+AB+gZCwqtHX56kiHew7ihN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fzazQLMiElf0E2rTzrIHqd72McOV2ajmxD+aMmf7vqY=; b=N
 DHjlrHNmlRJwX7b7lNi6XkZ5Yn8xfnOD0u0h4je75MsLTxtB7X+UACHdPOHUG+7tdcbsdPKp8pi1F
 wOX6PKKVB6AeY+zk/BO6wgugMMMqSlp7/bnXjb2NNlN1FYTAG2leFifrtrZhrN0WjYpg2zbmTVumm
 Gqg4BsOM/dc8LNyw=;
Received: from mail-pl1-f196.google.com ([209.85.214.196])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qsRIV-0000nC-LQ for jfs-discussion@lists.sourceforge.net;
 Mon, 16 Oct 2023 17:22:33 +0000
Received: by mail-pl1-f196.google.com with SMTP id
 d9443c01a7336-1c87a85332bso40961605ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 16 Oct 2023 10:22:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697476946; x=1698081746; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fzazQLMiElf0E2rTzrIHqd72McOV2ajmxD+aMmf7vqY=;
 b=BK7gl9Oy3MHU5rC9GswAKoK7uW5c0LMkjQ93cgoYTSPM1IekEFEf5ZSMlS5V8Fp2dw
 Z2RbcYImcsneXAej9zORUqu0E0l1bQrMWDAQXvSdfsmgEJWvzi+ubN1BTsaUf/jZ7BvO
 X5EQaIdvB2zKCQqPEN1lMM6oztAjHnrDEnbDma485jSZdVHGAEWaGe5+efHDEHyx0kCB
 VZVRx1vOrkQ7zxQGKvlfxlKlveWUUPgy/Do7jVbUNXeJcDNRns+4bf2R2qe6rNByQcVm
 9jv/VcHBoYFK91+qYsGNLGXrrHgNOIwl1XuSVTa+gINc7i8MTgqQ/3Cql0Soe0l+mKCq
 Lmrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697476946; x=1698081746;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fzazQLMiElf0E2rTzrIHqd72McOV2ajmxD+aMmf7vqY=;
 b=DZMYRrHsmcCYqX7LWLa5QRPmC91jxRtTd4U/JoVHm/1awKK3kwMzD7k1rJtgioigTv
 cMUzHXhRFb9ok4DP9VSF3x0hBmdgEdcs/Vd3IDvuJZLOTWJ/JlmV+/eepPpsiUfEU71M
 pQSqOgqEFDVK7SRT3GRx6OEc7OXsJQwI+hc4Riv1u6xDB2dLUHdL6YxzztIeKaNBM74o
 jS7qP2JMSKLIxyW8GSU+qdNcbC5ANbOm5GTXQWtEC9jdb2E3XTtgluPREQe400BbOMM7
 hGDLAJ1eRhkuREETIjFuk9OZRRQJfaoQuFMaSUVl+jubUngMUVqs3Jz9na+/okMdon36
 ShlQ==
X-Gm-Message-State: AOJu0Yw5Vt43Czy9pLboDr1v1p0k/tJOMHdVB3Q5HLo6IaShQ8jIWYjY
 c4IMEpOxGYtCXlZW9fumEHMu4RamjceYopTbduI=
X-Google-Smtp-Source: AGHT+IFu32FXclE93vnrfHvsUnNd7aLyilrnezvtfZPodtmCbOs68G8/SX15ddka7PWiK1VxXkXDQA==
X-Received: by 2002:a17:903:2445:b0:1ca:2497:554 with SMTP id
 l5-20020a170903244500b001ca24970554mr9560472pls.8.1697476945945; 
 Mon, 16 Oct 2023 10:22:25 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.178])
 by smtp.gmail.com with ESMTPSA id
 ik5-20020a170902ab0500b001b8622c1ad2sm8926936plb.130.2023.10.16.10.22.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Oct 2023 10:22:25 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Mon, 16 Oct 2023 22:41:30 +0530
Message-Id: <20231016171130.15952-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently while searching for current page in the sorted
 entry
 table of the page there is a out of bound access. Added a bound check to
 fix the error. Reported-by:
 https://syzkaller.appspot.com/bug?extid=9924e2a08d9ba0fd4ce2
 Signed-off-by: Manas Ghandat --- fs/jfs/jfs_dtree.c | 3 +++ 1 file changed,
 3 insertions(+) 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.196 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.196 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qsRIV-0000nC-LQ
Subject: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds Read in
 dtSearch
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
From: Manas Ghandat via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Manas Ghandat <ghandatmanas@gmail.com>
Cc: Linux-kernel-mentees@lists.linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 linux-kernel@vger.kernel.org,
 syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while searching for current page in the sorted entry table
of the page there is a out of bound access. Added a bound check to fix
the error.

Reported-by: syzbot+9924e2a08d9ba0fd4ce2@syzkaller.appspotmail.com
Fixes: https://syzkaller.appspot.com/bug?extid=9924e2a08d9ba0fd4ce2
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
 fs/jfs/jfs_dtree.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/fs/jfs/jfs_dtree.c b/fs/jfs/jfs_dtree.c
index 92b7c533407c..cf67d32d5b7f 100644
--- a/fs/jfs/jfs_dtree.c
+++ b/fs/jfs/jfs_dtree.c
@@ -633,6 +633,9 @@ int dtSearch(struct inode *ip, struct component_name * key, ino_t * data,
 		for (base = 0, lim = p->header.nextindex; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
+			if (stbl[index] > 128 || stbl[index] < 0)
+				goto out;
+
 			if (p->header.flag & BT_LEAF) {
 				/* uppercase leaf name to compare */
 				cmp =
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
