Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E627C42E8D
	for <lists+jfs-discussion@lfdr.de>; Sat, 08 Nov 2025 15:49:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FXa0sXzlo+XMg9E3i6sMOKs5pDTxc2CB5MMN8K83TXo=; b=LhKMIB7nMYaPJiBM3l154QVW1y
	6aSHLqC/UjqvRlxv5hSiiRuhCVBEMVATtViCsS91LDo9+IbNnneWTdZZw/D6c4/Xihr/RF/VMhmS0
	fQkCzwehWPQO3u7XXZXaM6mHecSSBwGbgaOISTaXKZ0Sygh+3LxIspuFa6h/pPgZ2vVI=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHkF5-0005ZE-Jp;
	Sat, 08 Nov 2025 14:48:39 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1vHkF3-0005Z6-Ow
 for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 14:48:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=; b=VqsAV+S7iKgBzDov194aGfGu2H
 +lsI94ZNCY00MdS+RZv/W1DF3BN5a6QC4ukyIrK3ZrnONK8FAC0t4wSzmNigFN2LG0ZEvIWlZAC8E
 ZlWFWhNvbT25H0I0KpfAQmWwAzIFCcoaAbvg4RMgDQyeuX52prAVjq7B9dKRvGvUj0r8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=; b=B
 yCfZWKw+7TwesM8egR6FxeeCPX3bGB7aewKMQWr3U7TReD4+QB59oMWl+MaCDRSRGdXe9IM3RvaO6
 Ht4G/kclS072LdpYx/spz1SkucIoGN5GC3B0RXJZvlg1aVW85BmJg9nyeYnIzNbYda7GxGDVn3wOC
 DNFz4JAoPPrzlATQ=;
Received: from mail-vs1-f44.google.com ([209.85.217.44])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHkF3-0003Fl-Am for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 14:48:37 +0000
Received: by mail-vs1-f44.google.com with SMTP id
 ada2fe7eead31-5dbd3dbbde3so1341331137.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 08 Nov 2025 06:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1762613311; x=1763218111; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=;
 b=NNejPNYD6Y8koRmBhwgoedFZFqaZ2Urx7IA1Arh4DaIiH4dAytBKjDoY9Dj4p/crHl
 pFyhYjd/KexvcAH9bfyvBTVR8N93gM5fmb6idny2LP9TbKlgMsXiVEGkve7OJYKz5WM0
 wcv8ovlL1J3YrKe2aj85fpx+bEXDj1x13/fQ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762613311; x=1763218111;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=;
 b=IOvn5oKtMoLw7aprd+R5OixZsxCMLiWxVTTi7DL1QWVILyA+kseHKs0iGrV1kdYXeY
 7TKRwPkSDFM7QEfMNnX52mnRXu2Jh72K3LkTm4NCjCaOnG39HahFzVyK/PRihsWSjvCo
 agt3xhsENhYnmAEua/tAfBf25CdU5CFV/jsfH5w1n0A3b5TuVogE6cfIa2Bnl+4oSzQ5
 Ajc0FfNwCv+rlP5kh4zGWxzy18MU6hBRM7n+cRwEA+Csf+sbIyEDbPO4XKbjTQkegRHI
 J8FjLZPbKaYBCbAl8FE38mByQRatEsL8LlWNLMynxb4Gow6KyomWipqq5jeKx7gE0M0K
 jLVw==
X-Gm-Message-State: AOJu0YxriwteWGSxf2d2r96nkppl74U2bUfUiSS/k2kMPqy/fQMPVLtG
 9nuY+xmApZxA11QACD8eaK4iMFgDRsICwZFI25mw2ra3tv5d0uTd6WchSacDvjOnXSwG6nCpXvO
 Ymy+fnDM=
X-Gm-Gg: ASbGncspbgpUSMyn54gULe32oSmq3i57sAhm9jWLmvVjB80dLkCMs48+Oh3PvPXvfGC
 P6ZqmYK/5XvQ7xTHvVZAhrggGu0YPChKnviksisriVt9+8v/KIi057qzNP9U6XbBIt4e2nTeO6l
 NXPOlZJhNoc4mH1wcuD0ZlK+K6me3fTwhwIte7hxOZskDo6pB8rZ3gpNFJoBsW6/KJCIzWZOhNV
 zICuRYfa5dKYlLl7VueK/YB0gqgxkcXzpXzmz6FyvgBot21cnIqmNsDRmR8OVL+QTn7OT4x4vGt
 yAa+CeHXd34tbcObG49hy+CNNsScVSkm0qljMw0D+UghxzVHyzJjUk/8s3cpU2OzVfrad0sicUo
 BRQ1XIOh8fr1mWvx4yKrwHKZxEl4KE0ca2cpc8Uc6X4e4kVWRLm1SD1czP2ir2pnkv5taDg7sNR
 PZpOqFptLN6BYk/ih6As/pkI7jVvLBTz/4eFoCXcQezR711sIvMFJnPzQ=
X-Google-Smtp-Source: AGHT+IEZ9euzPCxHgG3701HKH2i39ZGTwwKtLTdHZiIOFoUF2Dx5qGD68ES419evk39qlMiE3JxWkw==
X-Received: by 2002:a17:903:240f:b0:297:e6aa:c499 with SMTP id
 d9443c01a7336-297e6aacda6mr28652735ad.58.1762611524506; 
 Sat, 08 Nov 2025 06:18:44 -0800 (PST)
Received: from ranegod-HP-ENVY-x360-Convertible-13-bd0xxx..
 ([2405:201:31:d016:940a:b59:9e93:d45a])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29650e5a33bsm91980345ad.47.2025.11.08.06.18.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Nov 2025 06:18:43 -0800 (PST)
X-Google-Original-From: ssranevjti@gmail.com
To: shaggy@kernel.org
Date: Sat,  8 Nov 2025 19:48:33 +0530
Message-Id: <20251108141834.46428-1-ssranevjti@gmail.com>
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.217.44 listed in wl.mailspike.net]
X-Headers-End: 1vHkF3-0003Fl-Am
Subject: [Jfs-discussion] [PATCH v3] jfs: Initialize synclist in metapage
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
 syzbot+e87be72c9a6fe69996f5@syzkaller.appspotmail.com,
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

Reported-by: syzbot+e87be72c9a6fe69996f5@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=e87be72c9a6fe69996f5
Signed-off-by: Shaurya Rane <ssrane_b23@ee.vjti.ac.in>

---
Tested:
 - Tested locally with syzbot reproducer, no errors observed
Changelog:
- Correct bug link
- Corrected patch format

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
