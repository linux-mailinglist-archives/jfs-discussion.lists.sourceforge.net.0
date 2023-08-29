Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFC978C9F4
	for <lists+jfs-discussion@lfdr.de>; Tue, 29 Aug 2023 18:53:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qb1xc-0008KG-H8;
	Tue, 29 Aug 2023 16:53:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ghandatmanas@gmail.com>) id 1qb1xb-0008KA-0t
 for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Aug 2023 16:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1qQzy70Oe0bgxhcuXv4Qw9ZpdVk+SYDfFf1MSTVPxDk=; b=Sbs7D16Pp6+jNNM2Da64XdNMuC
 8746B4AAGFUIb8jpGQLnXuC2LeeEQN+NS/Toah1U5VyZ6xmP//L4PIB13GK50/dScYLRyed+m1v8O
 q4EjbviyYwQpWY7vjl7+LF9CVvT149MMMerkbwZwLdh0xMJ4s4lb+q6EWS3utLV8TQY8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=1qQzy70Oe0bgxhcuXv4Qw9ZpdVk+SYDfFf1MSTVPxDk=; b=P
 i8HYxiBN5gMrxBRZjOmthoOih+6/alh4b2nvxQp68ygK+S2JNQPov3gElXKgOXvsJVbWBxzuPoewm
 vxF2Vhvq39ONtZ1JJPmd3GnYc9JysQZRDIrEaPY2OKvPEfbWuC6YzqxGeXeXVEnFyGg/2eEtngbtP
 3ETbSRmth4kBLZrI=;
Received: from mail-pl1-f182.google.com ([209.85.214.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qb1xa-0002KY-CL for jfs-discussion@lists.sourceforge.net;
 Tue, 29 Aug 2023 16:52:58 +0000
Received: by mail-pl1-f182.google.com with SMTP id
 d9443c01a7336-1c1e3a4a06fso14530675ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 29 Aug 2023 09:52:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1693327973; x=1693932773;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=1qQzy70Oe0bgxhcuXv4Qw9ZpdVk+SYDfFf1MSTVPxDk=;
 b=oB4niErMzCvAp+298iHDJV0d4kklPtej65wWAtbzel45dp7FsV5ZCBPQ53aCmcviR6
 blHZo9UdOMdrtc/EOfqqxV0DRBDrFwSyHYd23sKXvDdsQbcXLvYlfIzOIucpJSfiu8eM
 3/HOcDubqKZM/o4oaG4KFWX9p1ahqHrmWRXnVM6QYOZYMPWiKrtW7cQwU4xa2dkKjxA4
 m5+chF2a4q1m2/l7lbCzMSh4yMuLxSs/4YaO1rXUkbzlV1qUTZCWbOZQ9eCi3Jc+tCfn
 QerAivKLgs2C2oanuBV//E1VX36W+RB/ojn+QJn9D5Ego7bVj5vNQ1WHh4j5FPS57/5Q
 0rqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1693327973; x=1693932773;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=1qQzy70Oe0bgxhcuXv4Qw9ZpdVk+SYDfFf1MSTVPxDk=;
 b=EOVa5ajIObCtbaY3P58qvnYJcMz6rKAPU68IS99qlplU5y9ugMekSKmdIkbRmCZzKc
 oB+s28CH+Y6F0WN51hGMEor8kuZtG6Xh5LaPgBgc3nLpNbXGF1BbqBkW/hsiBFiV/2lf
 PDhrFKzLWa4Eu0gfUWY1/cwcGGFvSY2tIFrwuZrx7r5uIQepwqW8NIEYpqLK1NC/m/aG
 6ggFNXNO4lUoaniJ2vH8uylxXhJNJVHyg+mwq3PnG9pRRvxsAJUJuwOCyrd8VBhrdPwA
 oXLzOnHGdUUPV6Km7yAytGBL4Ka143agMARWdnpBCjtITszeTGy5GcYa6X44arS4iDFY
 i8ow==
X-Gm-Message-State: AOJu0Yxp3G77wlNsoXLLLiMh7Cqfr8D6V1scYuWGb7+vGE1N22UqkH1A
 hvzzKkeGSD/DKZhA/teeJQ4=
X-Google-Smtp-Source: AGHT+IEpvMY/b0UIWmQtleMKRid8O5Pm9nwIOdAZ0pHOdoWFJLs2P7BGHY1pmCRM6vcRxWCW3jhj0g==
X-Received: by 2002:a17:902:7408:b0:1bf:73ec:b980 with SMTP id
 g8-20020a170902740800b001bf73ecb980mr19713324pll.66.1693327972489; 
 Tue, 29 Aug 2023 09:52:52 -0700 (PDT)
Received: from manas-VirtualBox.iitr.ac.in ([103.37.201.179])
 by smtp.gmail.com with ESMTPSA id
 ji18-20020a170903325200b001b9da8b4eb7sm9582735plb.35.2023.08.29.09.52.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Aug 2023 09:52:51 -0700 (PDT)
To: shaggy@kernel.org,
	liushixin2@huawei.com
Date: Tue, 29 Aug 2023 22:22:44 +0530
Message-Id: <20230829165244.460154-1-ghandatmanas@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Currently while searching for dmtree_t for sufficient free
 blocks there is an array out of bounds while getting element in tp->dm_stree.
 Added the required bound check. Ps: After I added the check I am getting
 the following log 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.182 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ghandatmanas[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.182 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qb1xa-0002KY-CL
Subject: [Jfs-discussion] [PATCH] jfs: fix array-index-out-of-bounds in
 dbFindLeaf
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
 syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Currently while searching for dmtree_t for sufficient free blocks there
is an array out of bounds while getting element in tp->dm_stree. Added
the required bound check.

Ps: After I added the check I am getting the following log

[   22.661748][ T4425] ERROR: (device loop0): dbAllocAny: unable to allocate blocks
[   22.661748][ T4425]
[   22.665536][ T4425] ERROR: (device loop0): remounting filesystem as read-only
[   22.667856][ T4425] jfs_mkdir: dtInsert returned -EIO
[   22.669750][ T4425] ERROR: (device loop0): txAbort:

I was wondering if these checks are significant of not?

Signed-off-by: Manas Ghandat <ghandatmanas@gmail.com>
Reported-by: syzbot+aea1ad91e854d0a83e04@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=aea1ad91e854d0a83e04
---
 fs/jfs/jfs_dmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index a14a0f18a4c4..5af17b2287be 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2948,6 +2948,10 @@ static int dbFindLeaf(dmtree_t * tp, int l2nb, int *leafidx)
 			/* sufficient free space found.  move to the next
 			 * level (or quit if this is the last level).
 			 */
+
+			if (x + n > TREESIZE)
+				return -ENOSPC;
+
 			if (l2nb <= tp->dmt_stree[x + n])
 				break;
 		}
-- 
2.37.2



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
