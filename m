Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 444D1C86D32
	for <lists+jfs-discussion@lfdr.de>; Tue, 25 Nov 2025 20:36:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-Id:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZcfkzdqLag+V8Fnx4GduqniRdbDasBD5qtbvh/WFRUg=; b=YU6UACNLaUjtkWQRHd8A7k+ZAE
	lRFHfKlyiuezpix3n99bIrUr2AUYNjhys4lu91p/MxtLBaEc5+3zn40PDZsCOTzYbT4KbJWqBLyAD
	rAU9iqBuRQbZyzHydy4HM9onaQeX4KYO89w3v1SnVVLSuAD83Q8+dYTuh3ldZVd0TyqI=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vNypC-000877-9q;
	Tue, 25 Nov 2025 19:35:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <activprithvi@gmail.com>) id 1vNyin-00085Y-4s
 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 19:29:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1dEvpJCJ5Eb/n/HeT1J2JhwG2y2GJzThw73KaL8l2IM=; b=Po/qPlaFMdLDlnX+2t1zAfD54M
 SyaQHSgqNJpLGexQRD+2pd1dLpzT/ECTb1cEosm2RtneUZHU/+4YOk1bZ6IKOC0Ymc3IpC51Rgq1X
 39gqhVk//dCX+jf7/HQVHtRtmqtdZVS72hNdsGB2ybc5xTrxTNFelm/sYGxutplAna64=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1dEvpJCJ5Eb/n/HeT1J2JhwG2y2GJzThw73KaL8l2IM=; b=kq1rYQgZr4Uou6C44lfoihYYWU
 dWsxo+XbstlbbHkFhTlRBZ1y3PlYA1WYbhRSuQp/bCWqjsmH3EElIyLXdInKqtiDmwqhZO8/i4qHj
 qVtVIDHF1YNrPsXlSwqyZwm6tGCfD32ZdIU1Geu/Zuznzg/OgRBaEuO9u0+eJBbND27E=;
Received: from mail-pl1-f172.google.com ([209.85.214.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vNyim-00046b-K9 for jfs-discussion@lists.sourceforge.net;
 Tue, 25 Nov 2025 19:29:05 +0000
Received: by mail-pl1-f172.google.com with SMTP id
 d9443c01a7336-29806bd47b5so36020005ad.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 25 Nov 2025 11:29:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1764098934; x=1764703734; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=1dEvpJCJ5Eb/n/HeT1J2JhwG2y2GJzThw73KaL8l2IM=;
 b=Svgif6zy9u/OC507X3+uwdwA9NJVzwVzlNUr/xYR9G9bovy2NMd4PVAAEuABBfKt4O
 bZXTpkywwxyqhMSqKuHSRRYQ/BBJEHeK8pTyD0LauqD1bgmnze5WwiyWi+HIqP3x1hYB
 5kkTlnbFZ3wIU/isOhV9E4IDFyH9xCic236hrdfys6pdru3mYOJCEconGBJ+yv9SqfKa
 8ViE8VXVxA3LYH71T4lqTgZBItFPpErAvs3kJlZUq+bjyoKTQsmzox7HtPMtFGRWDcUk
 RcvZLr286scPOiER935bwyQRvCPfUKwfoBqtU6Q+3s1j6X4uDel+Zapa19xMj2jaL08I
 bGIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1764098934; x=1764703734;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=1dEvpJCJ5Eb/n/HeT1J2JhwG2y2GJzThw73KaL8l2IM=;
 b=SFsr3aR5+uq9VHCf3CZVsp1H8cliCzo0OIamHxbQ9T65OShFUqmdUa4YpDzz5jD1ju
 iFPZh6QssGwCycxiWyUQCqCCETC0db6zXyrUYXbsJiSW3uZWkhJYd3Q+LL0j2/V1yFgi
 C++clYUzwfxUYuljkoHdeJX/fvz2x6yGPL5gJ/BxS4rpjTqkN2jstUkjZBEegMd8uarc
 wpKJE7ZlXEe+7+bC4CueJLP85aqPAHsGApEsw6RUkfh2/uLGyUVy49NPK6i1pB8/tNEi
 AbQGQJ1Dj+we6SIldMhOPepmvaZumLm3Pp8rj6KCvDpP6EUVa4R7GLz4ZsWWWC9y1Y0m
 6V4g==
X-Gm-Message-State: AOJu0YzJfyef2e4sa7f1rQtFKD/NdKMK/HjjWVkmV45Jsi7AfHFq8RNJ
 1kqlVc7lmnyj8gcWl1NjlMTCU085I1mMtaMjzesoSFBBTpjsKMsXltZs
X-Gm-Gg: ASbGnctc/JAgInZxYeW8dneErOSn1Qq4LbqWmhdrQWdlk/v+/DOLHqhqGx9Ojw8FO43
 S/Z1AhV3TT0U8zaqQck7USQSt9hxTlc52RYZfy3Amy03VJPbsNWV8giNfQEQDSHi1TY54y0ynAX
 T8CFRynGndwWcQ5alMISZfm8truUA/pbFjhTHHXq7Ht+mArPBQmWHW6ETzK/mAPke737Im+Mlru
 HZjdZah8qP7Tx8VChxnoF+RETreU2YL24e7r2twJgfKufc9m9i6CuqCzq/5ubJRYE4IlL6RxeMU
 SVQu+Sct0tLEomkJnMjagGAVdhPb07zsgceIsyK7koKDK38830L3K+aKe8M+maFbUN1Qj1i9eLV
 R9BEAXOaoJ9QKIBntt9HnkZrm5SHpNzu4h3+CN0KxTY9gAefEy44DgKeI4sS5ly3vxBaHZwi3Kd
 PX7taBQ0it2myEjlRHgvd7iCD/ELs=
X-Google-Smtp-Source: AGHT+IH0rf5tBwcHAcc2peGG2tlEnYRHlLeA1BLMbKHDykGaqFIEijranxxUfPj1yis4ZY7sFNyDiQ==
X-Received: by 2002:a17:902:f788:b0:267:a1f1:9b23 with SMTP id
 d9443c01a7336-29b6c3e5524mr165447575ad.18.1764098933796; 
 Tue, 25 Nov 2025 11:28:53 -0800 (PST)
Received: from localhost.localdomain ([114.79.178.248])
 by smtp.gmail.com with ESMTPSA id
 d9443c01a7336-29b5b2af124sm174805245ad.96.2025.11.25.11.28.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Nov 2025 11:28:53 -0800 (PST)
To: syzbot+0be47376a6acbcba7f0d@syzkaller.appspotmail.com
Date: Wed, 26 Nov 2025 00:58:24 +0530
Message-Id: <20251125192824.151904-1-activprithvi@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <00000000000042f5d90618054116@google.com>
References: <00000000000042f5d90618054116@google.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: #syz test:
 git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 7367539ad4b0f8f9b396baf02110962333719a48 Signed-off-by: Prithvi Tambewagh
 --- fs/jfs/jfs_dmap.c | 5 +++++ 1 file changed, 5 insertions(+) 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.214.172 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [activprithvi(at)gmail.com]
X-Headers-End: 1vNyim-00046b-K9
X-Mailman-Approved-At: Tue, 25 Nov 2025 19:35:40 +0000
Subject: Re: [Jfs-discussion] Syakaller testing for KASAN:
 slab-out-of-bounds Read in dbAllocBits bug
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
From: Prithvi Tambewagh via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Prithvi Tambewagh <activprithvi@gmail.com>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 syzkaller-bugs@googlegroups.com, linux-kernel@vger.kernel.org,
 Prithvi Tambewagh <activprithvi@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

#syz test: git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 7367539ad4b0f8f9b396baf02110962333719a48

Signed-off-by: Prithvi Tambewagh <activprithvi@gmail.com>
---
 fs/jfs/jfs_dmap.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cb3cda1390ad..8dba15c83a49 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -2142,6 +2142,11 @@ static void dbAllocBits(struct bmap * bmp, struct dmap * dp, s64 blkno,
 	int size;
 	s8 *leaf;
 
+	if(blkno >= le64_to_cpu(bmp->db_mapsize)) {
+		jfs_error(bmp->db_ipbmap->i_sb, "Allocation request out of bounds\n");
+		return;
+	}
+
 	/* pick up a pointer to the leaves of the dmap tree */
 	leaf = dp->tree.stree + LEAFIND;
 

base-commit: 7367539ad4b0f8f9b396baf02110962333719a48
-- 
2.34.1



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
