Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 283837A6865
	for <lists+jfs-discussion@lfdr.de>; Tue, 19 Sep 2023 17:56:36 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qid5E-0007HV-7A;
	Tue, 19 Sep 2023 15:56:16 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qid5C-0007HP-Vo
 for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 15:56:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nOHqs4qAkXtTB8hx364ax6AK99btnMvdjW46PwKkTo4=; b=JQsD47JWA8I85wiCBHC4ZKBmih
 KoeD6VdDQH/LGmphxZfzsMRpjBSB2e7vMuZHU/FGW3ooxfhy8/bCVGwdQOWjs6wXQZkSFjdSyW7bI
 /1BkOz1aRj1NmhvYSRPzkK0MYsJBoHWRZ80NecxXRzudw4IxMG3FDTm3VCvwxMIzXLko=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=nOHqs4qAkXtTB8hx364ax6AK99btnMvdjW46PwKkTo4=; b=Z
 GghoBx2PGp2xyqqlRsS07xlSR4B+3/HhzAkhkQuoiurF/YdwV5fHkBDVNkyVrhtNtDX0tWAk1nkIz
 7IJgzGCCLrEpVvC8y/kPRuwZqlXmqZNBMl1R7puT3kbMWcrhmieje8khxREmEYp+RWIuJoli1Wkzm
 3Frfed6vOVzR1htA=;
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qid58-0005ks-QO for jfs-discussion@lists.sourceforge.net;
 Tue, 19 Sep 2023 15:56:14 +0000
Received: by mail-pf1-f171.google.com with SMTP id
 d2e1a72fcca58-68fbd31d9ddso4577271b3a.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 19 Sep 2023 08:56:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1695138965; x=1695743765; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=nOHqs4qAkXtTB8hx364ax6AK99btnMvdjW46PwKkTo4=;
 b=k50Hafuf9CMho6bGp5wOZCKvJStiQwyXoMbZFy1dUHEI0P60SNLUOJSVdHuW01X3mO
 uCQLI4SdGBim5400PNCBaTDvYqFrk54+Mzgs4TEspGEgiCCrPMwZlKCU4VWLHN5XPOUL
 DyAkfynkoB12JKl3hUnTGfjkm/mYQDjbD78jCCK09f3fqYtTgc42m6HgmQbezEHbxvpS
 SvrapQUtNhxP+rN1CmH4WWrySaTEAw3+PXh6gCZBx/Nlxmf47jVO6N9MX0hXCMqgzOXB
 UcBosI6K3ujZkjOmiTGYO46grXx1viIMPk7wf4tyPc/Syn3tgrFt5vHYTIEiT0fkCe8G
 IIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1695138965; x=1695743765;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=nOHqs4qAkXtTB8hx364ax6AK99btnMvdjW46PwKkTo4=;
 b=DVARgAYTbE4xGmOw4gDtTE4ZooL4Y2tR7RPC07X5VH1fTYRqTIdHRwSjseOp8OlZ+F
 /61RGWm+oUcx0RMj9YFM+zAMka5IKBjWlcqmhof0fMeELbrFORWBirsb9bXvGDFqdkaX
 ovlf36nUX5L3tRNWz091a/P0EZLTyvoOk8UTlUpX1zrvjlhPsd2iBQAFl0fRs2OoWrKM
 Wesm3tanf+5JxRry5RXpv2OP5ii4vG5J2kDFogb2ShB35K5kJTkJyKkGIuBTiHSuotVw
 MD2sstOPaymAMeRSp1qlg2dC4GEQ0cREUjdBqXiMBxnhU/i1PguT6l+d/hRS3ng2CaJD
 XuEQ==
X-Gm-Message-State: AOJu0YzAv8LvlEyLpwP0wFO+Mb67CMU20v4x+2Pfy6rdQVfMXpzGzGrG
 7QHERR31uj5GWFmC7BLnT08=
X-Google-Smtp-Source: AGHT+IE0y3FysbDgGuSL0FvAtrT32Ve9Gq3DbLiI0l5tKFSTY2C0ADc+ebEoQua8RovmKSbfgcIckA==
X-Received: by 2002:a05:6a21:47c6:b0:140:a25:1c1d with SMTP id
 as6-20020a056a2147c600b001400a251c1dmr9500637pzc.51.1695138965147; 
 Tue, 19 Sep 2023 08:56:05 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.177])
 by smtp.gmail.com with ESMTPSA id
 bm1-20020a056a00320100b0068fece2c190sm8739890pfb.70.2023.09.19.08.56.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Sep 2023 08:56:04 -0700 (PDT)
To: shaggy@kernel.org
Date: Tue, 19 Sep 2023 21:25:42 +0530
Message-Id: <20230919155542.4354-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently there is no check for out of bound access for xad
 in the struct xtpage_t. Added the required check at various places for the
 same Signed-off-by: Manas Ghandat Reported-by:
 https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
 Fixes: df0cc57e057f --- fs/jfs/jfs_txnmgr.c | 4 ++++ fs/jfs/jfs_xtree.c |
 6 ++++++ 2 files ch [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.210.171 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.171 listed in list.dnswl.org]
X-Headers-End: 1qid58-0005ks-QO
Subject: [Jfs-discussion] [PATCH] jfs : fs array-index-out-of-bounds in
 txCommit
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
Cc: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com,
 Linux-kernel-mentees@lists.linuxfoundation.org,
 jfs-discussion@lists.sourceforge.net, Manas Ghandat <ghandatmanas@gmail.com>,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently there is no check for out of bound access for xad in the
struct xtpage_t. Added the required check at various places for the same

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+0558d19c373e44da3c18@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=0558d19c373e44da3c18
Fixes: df0cc57e057f
---
 fs/jfs/jfs_txnmgr.c | 4 ++++
 fs/jfs/jfs_xtree.c  | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/fs/jfs/jfs_txnmgr.c b/fs/jfs/jfs_txnmgr.c
index ce4b4760fcb1..6c6640942bed 100644
--- a/fs/jfs/jfs_txnmgr.c
+++ b/fs/jfs/jfs_txnmgr.c
@@ -1722,6 +1722,10 @@ static void xtLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
 			jfs_err("xtLog: lwm > next");
 			goto out;
 		}
+		if (lwm >= XTROOTMAXSLOT) {
+			jfs_err("xtLog: lwm out of range");
+			goto out;
+		}
 		tlck->flag |= tlckUPDATEMAP;
 		xadlock->flag = mlckALLOCXADLIST;
 		xadlock->count = next - lwm;
diff --git a/fs/jfs/jfs_xtree.c b/fs/jfs/jfs_xtree.c
index 2d304cee884c..57569c52663e 100644
--- a/fs/jfs/jfs_xtree.c
+++ b/fs/jfs/jfs_xtree.c
@@ -357,6 +357,9 @@ static int xtSearch(struct inode *ip, s64 xoff,	s64 *nextp,
 		for (base = XTENTRYSTART; lim; lim >>= 1) {
 			index = base + (lim >> 1);
 
+			if (index >= XTROOTMAXSLOT)
+				goto out;
+
 			XT_CMP(cmp, xoff, &p->xad[index], t64);
 			if (cmp == 0) {
 				/*
@@ -618,6 +621,9 @@ int xtInsert(tid_t tid,		/* transaction id */
 		memmove(&p->xad[index + 1], &p->xad[index],
 			(nextindex - index) * sizeof(xad_t));
 
+	if (index >= XTROOTMAXSLOT)
+		goto out;
+
 	/* insert the new entry: mark the entry NEW */
 	xad = &p->xad[index];
 	XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
