Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC11C42E69
	for <lists+jfs-discussion@lfdr.de>; Sat, 08 Nov 2025 15:43:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FXa0sXzlo+XMg9E3i6sMOKs5pDTxc2CB5MMN8K83TXo=; b=cH4Cab7WrqRRIG/khqqs/pRq3V
	VhTIeApQjZVwbavrnIiTzj2x8MEjgz9lfVKOftp4Qk+x6hLFqE4cH0rQHHyhQJktTvp8qM6KILmkj
	kvT9wauGoCNpag8q66zzEphFhmwBjWm7RiHPn69cxoqGxJPn8XxgQtkskVakqlPfxEV4=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vHk8y-0004ma-CZ;
	Sat, 08 Nov 2025 14:42:20 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ssrane_b23@ee.vjti.ac.in>) id 1vHk8x-0004mT-2G
 for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 14:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=; b=E4Zw/9yralcl8VAEHbCd0fJYxk
 MG4onXP/rSLl+VSamEoI+V8mamtAul7NV9gNr//AaOqZdomlRykG28jq635fPOlxN2enZN2qYwcdO
 FuvBDrUIk2ERK7LWMdBu/DSWK4g9lkg3fcjHIdtU+rufCwGxFNSH5oArGnYtrOpHhPNU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=; b=Quj7opWaZnJaWm96vyzPVrOwrc
 I//MSJUqxF5VXfSPNycVeutHw2TOFMV5ebhKGBg07/G4ami4Zo/g/wS1nc8n+mT57tgogiC7/yZyn
 RcXIwlxFAhh4fdMypD+DiD0bJ30ugI/btmh3Bhr8iSkwOvlMVFQLuMeQCZCc89qxyzqg=;
Received: from mail-io1-f46.google.com ([209.85.166.46])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vHk8w-000305-FR for jfs-discussion@lists.sourceforge.net;
 Sat, 08 Nov 2025 14:42:19 +0000
Received: by mail-io1-f46.google.com with SMTP id
 ca18e2360f4ac-93e2c9821fcso175880839f.3
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 08 Nov 2025 06:42:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vjti.ac.in; s=google; t=1762612933; x=1763217733; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=;
 b=RAJxkFyNuviIQ5/XKzv274nfkpm826ZxoK3HAwZkvEd5aOIOlv+3oLcNnmD8VcNzWO
 hhrFCecal68s1o0xRaYB2VOiYTbCsc7iFdbKfn61IUYdze8Z25sTBILYJBsVVOtCrqIl
 vKYVG1Fl5tZI2AuaQcEBQLWKJR+oGJwJst5Xs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1762612933; x=1763217733;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=+tbABRM++smOTjrYwL9jZfiTdA+E+dTcCgbmNoRiaFk=;
 b=UvAcudo91QfeI0bschYfKyCGb/VW/3neUTJQ1uRAQ9N/ynF8Z3rf3gGEDVaOW7NlPl
 iD3s3mXdYE+3fN82KtONH45QY9CNByWh36g5qQLEzFaMYYA+NjEw22gIbzYHKDxh/tyU
 QJBSKFgNW8Cd910OfAnZBBYLDqh2RSyY/79gzmwamZLARq/AG3N1OPbWTtgUR8EZti/R
 lqkfk+2CTxYh3BZ0Alox0vM8XvGnJu2IJPddDwYT7+4QXF/0N4iAK0keXL/wWeAI3fLA
 zcZmnlCEEf8aRx4c9LUfDLhyofxcbIvTL5YU103O5Wjg1CCjaTTNsc57sq7yqnBMOALJ
 gR9A==
X-Gm-Message-State: AOJu0Yzfr2OWPCZyEyti+lmxfaol6upsXgctOYg58ktePfpPc4iBG8kj
 Q8sWI6xGTmi3SzzzbOvyj/5RgL7nrsoKF6N+ANgHT+rQJykffrAa4XkNWHzTY0kC7vFsPMdn8x5
 zpfC9/zQ=
X-Gm-Gg: ASbGncsaEN3Gy0PfR43LB1DBDZe3uxYOEiyxlyrs7kX9LbZX30tofEf8/Rx9lhKLpW4
 mEgzqfVM4OpqDPYefGnrG7lhw04Oc4EupcTX8uXirHgsuyEV8COPm1qE/B8O1valL6ZkxxLyw+L
 6jWs3YCZjMUjXKzcWSkd7ztVv1Fxx6wu6H41ctwCGqzIvr6xP+oqQIR2qmOxYyomRiDban9kPbv
 RDuOAvE8If9PNGYzVErMVvTNqiHlkmZiUQzZqGgttoyIUxM4kNd++zS1in9SXfyLItlesOdMLM7
 2PN86mB5MRswoMT5V4yQgR4nvbnea4GAfjzo+voyxa96UxdRoXwY0LHroBMBU4ZTqlDMe3yMIos
 /uJP+nSKgBwz+VyUweuh7zA+ZOwJtSiZ8Fpq3lEeISEN3hIyLj5DxT/3UnMyROrzVKCbAkKCPWE
 4Y7ZNgyE0Rokiuriz33FCFZaARJMI4FdFJnHq6TgtVwhBS
X-Google-Smtp-Source: AGHT+IFCeb0OWUAtDUt6hRwnA2ps8eQb2CSjpBUF+IDZHNXFG8VCogkyWXts3NiibrXsnC+yerYFLw==
X-Received: by 2002:a17:902:da4b:b0:295:557e:7465 with SMTP id
 d9443c01a7336-297e540a394mr32978555ad.11.1762611535569; 
 Sat, 08 Nov 2025 06:18:55 -0800 (PST)
Received: from ranegod-HP-ENVY-x360-Convertible-13-bd0xxx..
 ([2405:201:31:d016:940a:b59:9e93:d45a])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29650e5a33bsm91980345ad.47.2025.11.08.06.18.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 Nov 2025 06:18:54 -0800 (PST)
X-Google-Original-From: ssranevjti@gmail.com
To: shaggy@kernel.org
Date: Sat,  8 Nov 2025 19:48:34 +0530
Message-Id: <20251108141834.46428-2-ssranevjti@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251108141834.46428-1-ssranevjti@gmail.com>
References: <20251108141834.46428-1-ssranevjti@gmail.com>
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
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
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.46 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1vHk8w-000305-FR
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
