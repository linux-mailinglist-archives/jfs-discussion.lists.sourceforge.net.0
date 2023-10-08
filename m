Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1037E7BCF6F
	for <lists+jfs-discussion@lfdr.de>; Sun,  8 Oct 2023 19:48:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qpXsv-0003sM-L2;
	Sun, 08 Oct 2023 17:48:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qpXsu-0003sG-IW
 for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Oct 2023 17:48:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=QJoz8SDUov6EH8w2r891PJdscTvuwkuTW6wM+WMDtO8=; b=g7oCGCDCJ3Ft7/kwaDiNkUlbuw
 +UaBBQ8M8nk0jxDCMlePCQSa5Str206vbngtzLXCTnBc9aBQ4DONiz4jFWNwZCWDs7gne+/A5FUWo
 TwnsPS1qJqcipw4G1Wtd+0+JJTxol6X8CoMtNsvUykv8QhwITEFGBY/GrBcLs+ABNMiA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=QJoz8SDUov6EH8w2r891PJdscTvuwkuTW6wM+WMDtO8=; b=C
 yY9iieO53Ua0KMwCQk9TqnBsivVODrmcpaqd+bovgPKad0RC06Q1jxh/6zONnrNG8NBuqnu45Xw3c
 J3PGAr9tqNB4KqDXPp8KWKdZBn9bZCgd/6XcoffFBJKlRiFr5AwY8XpjaXpRO+N8BYJMr70mhJwJg
 W0Ywp1/tExUAsyd8=;
Received: from mail-pl1-f180.google.com ([209.85.214.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qpXso-0002Sd-UN for jfs-discussion@lists.sourceforge.net;
 Sun, 08 Oct 2023 17:48:07 +0000
Received: by mail-pl1-f180.google.com with SMTP id
 d9443c01a7336-1c5ff5f858dso25426395ad.2
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 08 Oct 2023 10:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1696787277; x=1697392077; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=QJoz8SDUov6EH8w2r891PJdscTvuwkuTW6wM+WMDtO8=;
 b=BDVjdbck3lvyxTrk6LCpZuT11/D2HVQCYLclfhCiMeDbXWYxqawCpBEmJYoYiAUQ7/
 5OgLNX/nrOwS12hWCxYCT7mVRGD+7kVBfSpwWTFMH2KihURdYADJLiyvJM1IIb6Rn+Wh
 vO0LrQoZHJDbGIaLZl5VVASWJd2QCXcWztZahKAkJlCIeCrlAFgA4VZ+GzAJzM2sQom4
 GRtuN5yL8TBy4YxypD3ctas1qgv/z86Iczm7WE+N5r8l94KYoiKP2HuxPu9K9148LJgm
 gBqS0mnPto+ES8ZRhD2HzeItsfL4wfrdQ1nN1RfuvlyBWwv5T5hwxNHnEzwDkiGRtwGf
 uiIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1696787277; x=1697392077;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=QJoz8SDUov6EH8w2r891PJdscTvuwkuTW6wM+WMDtO8=;
 b=t4Z1llWcpVohhnV/oArw0COxzmyjXRLBWBMUTPUVRct57f2bIY1z5kkSxla1v576Tr
 M9hpsFv/5ddnY+Ut3n5giSHqaGNLizSD3e7PA0f79A3EjwibfaFFnbiZrfSJ8RszP3Om
 B9uGKn8+gBdoPjM7VR8RxUCKdF4gGkPacb6eH+N5cXMhYkzbMnAkD2a6PEQ3NOplonM6
 CeFd2nL+RbcpTTftkFfxKOlKaB8TS3Ji5iZLFMi/4gTHQq2yGXu42TEVwHaRwvXLHS8q
 XYJAWA4hVfXdNw96B8wiN7N04nYwCdr+LZn7P+VlJzPfKX4A0kphqY4vUW28Vd5s1ui9
 MEGg==
X-Gm-Message-State: AOJu0Yxkw0qtdbPXz6zwABFiMO4e0GKkJgh2udDQ27vi/NoIVB9Yt41Y
 ksw6ImfVvzyzoAh2+vj+0ps=
X-Google-Smtp-Source: AGHT+IE5/VaCHBxl0zQmbH6k5aueCLYd63UoBV/FHcEYzYhDOT8Gh5hnx8Yu2Vjd6+SWWeOZAHn77Q==
X-Received: by 2002:a17:903:48f:b0:1c7:2c07:ca00 with SMTP id
 jj15-20020a170903048f00b001c72c07ca00mr10512562plb.36.1696787277368; 
 Sun, 08 Oct 2023 10:47:57 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.175])
 by smtp.gmail.com with ESMTPSA id
 h9-20020a170902f54900b001c47541ecd7sm7757861plf.250.2023.10.08.10.47.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 08 Oct 2023 10:47:56 -0700 (PDT)
To: dave.kleikamp@oracle.com,
	shaggy@kernel.org
Date: Sun,  8 Oct 2023 23:17:45 +0530
Message-Id: <20231008174745.27342-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: 3.3 (+++)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently while copying dtree root from inode to dnode in
 the xp slot there is a out of bound memcpy. Added a bound check to the memcpy.
 Reported-by: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
 Signed-off-by: Manas Ghandat --- fs/jfs/jfs_imap.c | 3 ++- 1 file changed,
 2 insertions(+), 1 deletion(-) 
 Content analysis details:   (3.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [103.37.201.175 listed in zen.spamhaus.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.180 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qpXso-0002Sd-UN
Subject: [Jfs-discussion] [PATCH] jfs : fix array-index-out-of-bounds in
 diWrite
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
 jfs-discussion@lists.sourceforge.net,
 syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com,
 Manas Ghandat <ghandatmanas@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while copying dtree root from inode to dnode in the xp slot
there is a out of bound memcpy. Added a bound check to the memcpy.

Reported-by: syzbot+c1056fdfe414463fdb33@syzkaller.appspotmail.com
Fixes: https://syzkaller.appspot.com/bug?extid=c1056fdfe414463fdb33
Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
---
 fs/jfs/jfs_imap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 799d3837e7c2..d1f897848be0 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -746,7 +746,8 @@ int diWrite(tid_t tid, struct inode *ip)
 		xp = (dtpage_t *) & dp->di_dtroot;
 		lv = ilinelock->lv;
 		for (n = 0; n < ilinelock->index; n++, lv++) {
-			memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
+			if (lv->offset < 128)
+				memcpy(&xp->slot[lv->offset], &p->slot[lv->offset],
 			       lv->length << L2DTSLOTSIZE);
 		}
 	} else {
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
