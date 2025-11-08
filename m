Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DB9E8C42D87
	for <lists+jfs-discussion@lfdr.de>; Sat, 08 Nov 2025 14:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-Id:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=D2O4oqBurgDTLuwKubF4CHbmjNP2bF9VGCghs7p7xZM=; b=UGGwmt9MPTGON+X+UewXnVA6qo
	Xty7xP9DrhZRcLzgC/hfmFmXHQx46DdCtn77nLbRmthJfSzfXsqOdGj44bMjVZpWpWbpDRG2k/Q83
	+he9mHdUXKWry8X4dtNqpfY8hIpjUdfmcfEGMbgkR4wXvwC6HV1sebG5r+u+/NkcLNwE=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHjT5-0003nJ-88;
	Sat, 08 Nov 2025 13:59:03 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1vHjT2-0003ms-Rd
 for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 13:59:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=c6n3EPsz961nven+j6SJxgAVgFz9niflHZuv3YbeEgs=; b=cOApj9AHXc2m7AwvpWE0Cdmul7
 858fyxoqEjo+lD+lh6lTzANr5jTKXE5eutPIGkXBj3HujHovSVNXhJ0A1V0FUYbgm+7YVZ5w+Haet
 AtkG0l7qVatJNp0Q++cLTGrhgaC2CHIN5QS6RPzdoECg3zimC8HFdlzV0rU1is6k5hYM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=c6n3EPsz961nven+j6SJxgAVgFz9niflHZuv3YbeEgs=; b=M
 q89oHEuGSqnHeXbVOVhX8BKWFhsvFsFzpHvWBj4aPDr/LlUymYP2NK+Zi372yzFth2Hc0xmx3O9Kp
 4bg8P3yz+l+lfaDSAMcMgzIruXO3dcTpljXv2tvF7GgJEhNSQD3ypqklhTgQejRL55GvLQq5Kq9NE
 6NPtk2iBnG4yW7dQ=;
Received: from mail-pf1-f182.google.com ([209.85.210.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHjT2-00019U-6A for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 13:59:00 +0000
Received: by mail-pf1-f182.google.com with SMTP id
 d2e1a72fcca58-7aad4823079so1478486b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 08 Nov 2025 05:59:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1762610334; x=1763215134; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=c6n3EPsz961nven+j6SJxgAVgFz9niflHZuv3YbeEgs=;
 b=JkiM92nVGB52Vi+kcYVbcyzb5CesZqfuOOQmHPtQSwuzPt2iUUyVLwU1bCrvYwM4o1
 DtqygehcdSedwhUkBmZde36qPG1i7QOSisqI2tRwOoGxxNtJapZ4zthzIsi/YQcsFkcz
 Btp2tn8kehMrbr+pFOFkI7MnrFc3bdYSZDurY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762610334; x=1763215134;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=c6n3EPsz961nven+j6SJxgAVgFz9niflHZuv3YbeEgs=;
 b=umPD8dts8bXy+KGBz+1W6CRZzFZndFhgWMuZnwN8/IFwhGM377ctYflFc5AragUtl7
 MSdm5jkCrxB8gLutU9oiSbcyKwbOa6JA5RfNBMDYsel2jNs+uWB02wPfTOYKyOoO5hkI
 KGJC8EqJE+d3uDeYCiu9SNVO0YFkM+AudcduciHZAH+PepMrvCSaJ5ZEhM2votrjId/I
 jtAoyKT5RMgC7Y4fBXu5JkF5/gjg2GqOl6QKj2OmhUhtmPitu92wcojoVHH0bjMbnPPf
 t2+o8kbpYzpLynXBYCYUz8dn3edAYVsMA+MCx+zdfZCfmLPfKT6wouPHxOjyXX20FyR6
 pu7Q==
X-Gm-Message-State: AOJu0YzaIawja0gKUMmuHAz9Z+9liNTeFcPOASzflhe2MjqPDCxhpNpe
 1c+9N4FDEQfQ0wYdcWutrKqlEIQvTpZsqMyEhCeTHj9nKSTxSa13+5f+mKlE+k5Oa/s=
X-Gm-Gg: ASbGncuXPPenurcuZHopXxqIFI4t0H3Q01DhEfFEHobtOjDswR3atEFDznhL7HARjiQ
 dtZjuyAmeePBnMBkdOlKae3YyAszvg/0+rBWQzI/xB6BBbMNo7mpqbosR+GT/yJajxznvYKd7gL
 1N5wSW31fUsoh6oh3BVjOkcHajMt4tscQ0VaOS6Z6ePli2r4BqaZvj7da+A5ROEYAALRfktBsaX
 XNgGKqH1I+ye3/QH9JFl0xtNJWeKkGUW2TPg5M1YQeRgKeG0j5rgCwWBU/we49laOwr6jSA/mqC
 IHIigvDi9dgBFEOFMxhOOxQ0unDL4f+isvclWG3IvaSWMkz1jg0haAuM0uxRXvsRPlL/j+KjXbs
 v04oHWqRKOJEO2j3dz8SleuOknDL55zGJaQAMV/ZgKxfFEXQZM8qCv9Diom9Gou1WRPXA5EpXgl
 0jjt9L0Z8BSDeaxO7rjAXFGya5vhYfIyrirAO/J0TlUMfh
X-Google-Smtp-Source: AGHT+IFQqVguGIqedsjEz0k0Lw5GFUnn9lv1d5S1ooXU8a4FS9klL3ycJRWkb/ndyRRz6jrg5EhccQ==
X-Received: by 2002:a05:6a21:3391:b0:2ea:41f1:d54a with SMTP id
 adf61e73a8af0-353a3d61343mr3226851637.55.1762610334543; 
 Sat, 08 Nov 2025 05:58:54 -0800 (PST)
Received: from ranegod-HP-ENVY-x360-Convertible-13-bd0xxx..
 ([2405:201:31:d016:940a:b59:9e93:d45a])
 by smtp.gmail.com with ESMTPSA id
 41be03b00d2f7-ba8f8c83d52sm7985853a12.3.2025.11.08.05.58.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Nov 2025 05:58:54 -0800 (PST)
X-Google-Original-From: ssranevjti@gmail.com
To: shaggy@kernel.org
Date: Sat,  8 Nov 2025 19:28:41 +0530
Message-Id: <20251108135841.42281-1-ssranevjti@gmail.com>
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
 [209.85.210.182 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vHjT2-00019U-6A
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
