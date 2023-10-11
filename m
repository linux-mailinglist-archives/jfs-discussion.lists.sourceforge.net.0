Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EC80B7C5728
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 16:40:19 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqaNY-0001KR-BA;
	Wed, 11 Oct 2023 14:40:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qqaNW-0001KJ-Pr
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 14:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fQNK4cZppGs8Y8rM4h3XQeL/bSmNLB40k5aLUnjJJ7g=; b=kQ56V/WJaBH3DLaLOsdo3DFSem
 0VX5DIQ43C4kuUhKPclUXtngQ/ekXPr11iDSBqzuk0N4P24XCT4EuQL4qp8MVQYJLku9vmPsxx070
 eQDPJYzR8/MeYYIz0zi0bDKx1Bp8VL5877SG+lFietC2CSR3PCZo+gUtQHGKA90oDrw0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=fQNK4cZppGs8Y8rM4h3XQeL/bSmNLB40k5aLUnjJJ7g=; b=Z
 7Y0cbRsozFqQ7GZThdepEzhVwuHmvdyxe74npTnwNLaCJh19UoHgGrgm1Q9aUGz1JoaRlOZUKr8Ty
 ES26mDVTx1Y2oW2XVxMLz6d7PhdFkwXmoAg5tH9UJBo7xQEzfvCNdbnv8dc4hgrpWvqgOpiGrMOvX
 +7kmSHXzeaqcJ/m8=;
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqaNS-00044S-MW for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 14:40:01 +0000
Received: by mail-pf1-f195.google.com with SMTP id
 d2e1a72fcca58-68fb85afef4so5355140b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 11 Oct 2023 07:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1697035193; x=1697639993; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=fQNK4cZppGs8Y8rM4h3XQeL/bSmNLB40k5aLUnjJJ7g=;
 b=JT5mPOOIHHbXE1Tla1pts7yWr+/lCRyNwjd3hwIY8gGAPay+rzRAUUqchPdn7ZtW/A
 X+sP3haKPpxtuEO6tLuC8WOFCcJz3My8/oh+o/41AunsT6ceUllhciVEXg2QoiCk641W
 W4qwP/Qi2k2u+vv4QMQSfpPm/RQ4PECfT3N8oOPKYfhM6lpvnN4R4ADNSKBYBeKIbgYq
 q3nWYQVo1UsWSm0jHd8ze46j4ZTs1Tftk0d6AXnMGcmZVSY/nVc+wyV4WblnKfAA7dQ7
 litiQdfFaXN1w3isQvMobQPQeCQRbTET+BvjkLyA/P+xYT/BmwID/njuvmf2lQ0F+hXx
 mkTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697035193; x=1697639993;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fQNK4cZppGs8Y8rM4h3XQeL/bSmNLB40k5aLUnjJJ7g=;
 b=IQyFKdHiX3ouQhE1VaVem4c0xETEAD8WBXndL50xCV2Ksvu2wPHqgFQGaISug82Mq6
 61NSt06KhHzQP4PkWbvb0E+rllOAWAJT4GdLUg1+1KfVT0JMJP10UkbSRrz9kqJj9Ck7
 ykYwze96s7xBeLvpvrHtUUfpsutzTxhFxicvFmLOmGcUkGiAWsztqkhG7anVzCApoV45
 Q5szhonGfK5OfXeWtQxwGMVpf3CHSNG50KzJddYmK/ZGfmV+No3cLpOB2mHoLh2g/g8y
 J0JsOF54/YHTQfXsa2jdRiDFnp61WmAWltIMXgzQt/v4iR3sYQj3zzAEqwG/7ULVUUW1
 cKCw==
X-Gm-Message-State: AOJu0Yz31WpThUgn2s/p3lNVIb8ncq5Utgpmk00Llh9W5LPBIz4Wxe7o
 ZBMU6kWep2djWifU0VBSCX0=
X-Google-Smtp-Source: AGHT+IE6Ikt3sjADpcL2G+goBGqBF7/yE9bydDfjiJ4t5gPY9YMYFFqsRsWWbZrdhK57fjiyveTMXA==
X-Received: by 2002:a05:6a21:788a:b0:125:517c:4f18 with SMTP id
 bf10-20020a056a21788a00b00125517c4f18mr22055418pzc.8.1697035193173; 
 Wed, 11 Oct 2023 07:39:53 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.179])
 by smtp.gmail.com with ESMTPSA id
 x16-20020a170902ec9000b001c61901ed2esm13874266plg.219.2023.10.11.07.39.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 Oct 2023 07:39:52 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Wed, 11 Oct 2023 20:09:37 +0530
Message-Id: <20231011143937.31996-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: 3.4 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Currently while joining the leaf in a buddy system there is
 shift out of bound error in calculation of BUDSIZE. Added the required check
 to the BUDSIZE and fixed the documentation as well. Reported-by:
 https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
 Signed-off-by: Manas Ghandat --- fs/jfs/jfs_dmap.c | 8 +++++++- 1 file changed,
 7 insertions(+), 1 deletion(-) 
 Content analysis details:   (3.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.179 listed in zen.spamhaus.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qqaNS-00044S-MW
Subject: [Jfs-discussion] [PATCH] jfs: fix shift-out-of-bounds in dbJoin
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
 syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while joining the leaf in a buddy system there is shift out
of bound error in calculation of BUDSIZE. Added the required check 
to the BUDSIZE and fixed the documentation as well.

Reported-by: syzbot+411debe54d318eaed386@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=411debe54d318eaed386
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
 fs/jfs/jfs_dmap.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 6b838d3ae7c2..baa97bda1c7a 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2730,7 +2730,9 @@ static int dbBackSplit(dmtree_t * tp, int leafno)
  *	leafno	- the number of the leaf to be updated.
  *	newval	- the new value for the leaf.
  *
- * RETURN VALUES: none
+ * RETURN VALUES:
+ *  0		- success
+ *	-EIO	- i/o error
  */
 static int dbJoin(dmtree_t * tp, int leafno, int newval)
 {
@@ -2757,6 +2759,10 @@ static int dbJoin(dmtree_t * tp, int leafno, int newval)
 		 * get the buddy size (number of words covered) of
 		 * the new value.
 		 */
+
+		if ((newval - tp->dmt_budmin) > BUDMIN)
+			return -EIO;
+
 		budsz = BUDSIZE(newval, tp->dmt_budmin);
 
 		/* try to join.
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
