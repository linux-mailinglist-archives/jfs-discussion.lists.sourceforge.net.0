Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 609B1C41972
	for <lists+jfs-discussion@lfdr.de>; Fri, 07 Nov 2025 21:35:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=w6VBJUO5tjEszrK2CNG6M4aGL14MQeIvvpSJZ7vTsso=; b=NwH9jM4bjW4xfx3bSq4V8Ll0jO
	OkO7hG1wNNJEYuFLCf4ozY37przEFfe+IgAWKuQOw1VEst3ucsHmY0askFCLndOocAoR55yBET7Lu
	10QAIqkrfhWAOTrcQ2ntFhszZnSvRytvFiwDM7SqX/bF3UikX/DouWkU1swwh+9fbrYM=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHTBC-0008Ll-8B;
	Fri, 07 Nov 2025 20:35:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1vHTBA-0008Lf-Jo
 for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 20:35:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=dhDbgFwqZiDQu1EsSrcetxhJXfZ+td3XRScWxEwgYgY=; b=OA82aUmPuJGhoatb/MaDEgo0Sh
 0eSGYtCF5FlZW00BCtdSsUxj5PbUTFnf8xeGt5l7toDi3uRjAM1jswXtSjYqAqsEMeeUjftTiR7FR
 wwoyHQoIEW7lyiseJeqMv+jzE1/gVFAJi7BT/hKxCLyfVLz0hKmA3mjrC2RZmllqApvw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=dhDbgFwqZiDQu1EsSrcetxhJXfZ+td3XRScWxEwgYgY=; b=a
 8v6VcpOb7Mx108a1voCdf8lmYaV5VEIM3cLf9MYvpV1Xv5qrYwnWWb8rioDIo7NIYmHhTr7FrzKrJ
 O9eEQCbbIWlnIrxKMRmKImCj6h0qUFneHJJyUuJfxfOtDhpc7x13khyQf9yXyogDZpDXP/eTW4MyW
 B64mhtLtIvRRTR3E=;
Received: from mail-pf1-f174.google.com ([209.85.210.174])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHTBA-0001uu-1S for jfs-discussion@lists.sourceforge.net;
 Fri, 07 Nov 2025 20:35:28 +0000
Received: by mail-pf1-f174.google.com with SMTP id
 d2e1a72fcca58-7aab061e7cbso1583727b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 07 Nov 2025 12:35:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1762547717; x=1763152517; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=dhDbgFwqZiDQu1EsSrcetxhJXfZ+td3XRScWxEwgYgY=;
 b=Xhdv725jkIA4PWY5RHvZY2IaB4XvM1tiMIYYXeJgtd3sh2h73JndCVXvdGGfZn9RDv
 4lTW0DHpXwprpq5W2ObXhjhWaMQ8OUCMpEIvy9gNTZUiI18067QLg1epwe355G3lc0ob
 6x2Q+yJKF49vLgYKdrzH9q8QZvSKwfUjw9hds=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762547717; x=1763152517;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=dhDbgFwqZiDQu1EsSrcetxhJXfZ+td3XRScWxEwgYgY=;
 b=AKlRYSofcjYN2kyGyqQCp58j/YgtPgKh5LpjQKAlFLzNPfB+FKHLPaTcnbUfuVGxB3
 OWYcWr4dK3btsHEWLYsz6Bk3S6B072BL7Ql8qtP5+EFrNSO5Qv3nzh6DEQsbbAsMGlP9
 n7eH377xUQhrzkq1JUMQeSxro1w0GB1JfQNIvI+mTFGuSHT+Lo47k/xiIuuMttlEOeGd
 S60TJ0XQg54mSGPtBHTWDMk/zYaii4QdLgdtqX9mzeiIKAKsn2Fn/7MPfQEi6fouUfVO
 DxJX5Fz27aB4okQcrkyiRuLq1wdKs2hGGllWd6Sir9z2QBuTia9CI0roexN4u4JZPl3L
 RHyg==
X-Gm-Message-State: AOJu0YxjRurE/3rISCwVN5Td3VhtdPkQNQylf2zrtRHCtPci/07cAxJK
 qmzORezKqgF3QTg3HhEdP8oi92dCNCCrzM79ZBbfdhxIm6+cVUQmpgsuGMBKPRk0KRs9uMriaz/
 JN00C25Y=
X-Gm-Gg: ASbGncvIJ6q7q285TBb07P+vitGnXeB+CAkKS/2Wky0YcJYpp+/Ph/Gl3khb5YyMPSX
 6FSzW1lDvnk6H6ZQIHW7D6ATT/2n4LHu1T7qRDqTSPg/0IoMpG3eZf0FR8G6rZ51e5WXxyFZl/S
 tNkDsPDNDCRNZI9X2mTXPFic1ssczEaA6y9vvgowmcVQzrYBLbZ2uITZIhH043iCp/jMwcOiF3U
 B7N0rfkslKAiVuPwZSZTftU6uO0pLLBUZ/DkfOgjy7ZoGOjFeWadgvFC7Ttcq5/QYDx31SpifRv
 fedord2Wj5ICd6AqJUSasZiCsQfoR1JDiR2n6f1pHBE5kC4KqZIJE8T7fDpV/ZOlquXEFj49dZl
 9N/fj3FfwZW5TkMuSUIzkd64iRk2/Vn1V16h0AI+EckFE4Me4qsV1ucS3GB3x9p41lFV6/dFacL
 8L6jASWK2JgiJA3j/JKUESLSTMm+SWmxl1Tai/hY7RwpV/JozLhq3Ahlqt
X-Google-Smtp-Source: AGHT+IE2QH0bYt9evLPt32Zmzpg6IE1jS/NHlYekxZETu/ShdgKYTlNUPI/Uj5DCmlG72yB5wBW9uw==
X-Received: by 2002:a17:90b:4c8d:b0:33b:cfae:3621 with SMTP id
 98e67ed59e1d1-3436cd15e8fmr389381a91.32.1762546019685; 
 Fri, 07 Nov 2025 12:06:59 -0800 (PST)
Received: from ranegod-HP-ENVY-x360-Convertible-13-bd0xxx..
 ([2409:40c0:27:d019:96c1:1e18:c1b7:e182])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-3434c3001f2sm3327186a91.1.2025.11.07.12.06.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Nov 2025 12:06:59 -0800 (PST)
X-Google-Original-From: ssranevjti@gmail.com
To: shaggy@kernel.org
Date: Sat,  8 Nov 2025 01:36:45 +0530
Message-Id: <20251107200645.149093-1-ssranevjti@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Shaurya Rane <ssrane_b23@ee.vjti.ac.in> The synclist
 field in struct metapage was not being initialized during allocation in
 alloc_metapage(), 
 leading to list corruption when the metapage is later added to a transaction's
 sync list. 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.174 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vHTBA-0001uu-1S
Subject: [Jfs-discussion] [PATCH] jfs: Initialize synclist in metapage
 allocation
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
From: ssrane_b23--- via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: ssrane_b23@ee.vjti.ac.in
Cc: shivankg@amd.com, jfs-discussion@lists.sourceforge.net,
 david.hunter.linux@gmail.com, david@redhat.com, linux-kernel@vger.kernel.org,
 syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com,
 Shaurya Rane <ssrane_b23@ee.vjti.ac.in>, khalid@kernel.org,
 skhan@linuxfoundation.org, dsterba@suse.com, akpm@linux-foundation.org,
 linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>

The synclist field in struct metapage was not being initialized during
allocation in alloc_metapage(), leading to list corruption when the
metapage is later added to a transaction's sync list.

When diUpdatePMap() calls list_add(&mp->synclist, &tblk->synclist), if
the synclist field contains stale data from a previous allocation (such
as LIST_POISON values from a freed list node), the list debugging code
detects the corruption and triggers a stack segment fault.

This issue is intermittent because it only manifests when recycled
memory happens to contain poison values in the synclist field. The bug
was discovered by syzbot, which creates specific filesystem patterns
that reliably trigger this uninitialized memory usage.

Initialize the synclist field with INIT_LIST_HEAD() in alloc_metapage()
to ensure it's in a valid state before being used in list operations.
This is consistent with how the wait queue is initialized in the same
function.

Reported-by: syzbot+cfc7cab3bb6eaa7c4de2@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=cfc7cab3bb6eaa7c4de2
Signed-off-by: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>

---
Tested:
 - Tested locally with syzbot reproducer, no errors observed

 fs/jfs/jfs_metapage.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/fs/jfs/jfs_metapage.c b/fs/jfs/jfs_metapage.c
index 871cf4fb3636..77c512a0a42b 100644
--- a/fs/jfs/jfs_metapage.c
+++ b/fs/jfs/jfs_metapage.c
@@ -269,6 +269,7 @@ static inline struct metapage *alloc_metapage(gfp_t gfp_mask)
 		mp->data = NULL;
 		mp->clsn = 0;
 		mp->log = NULL;
+		INIT_LIST_HEAD(&mp->synclist);
 		init_waitqueue_head(&mp->wait);
 	}
 	return mp;
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
