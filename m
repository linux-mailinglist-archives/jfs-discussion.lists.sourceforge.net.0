Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A43BED198
	for <lists+jfs-discussion@lfdr.de>; Sat, 18 Oct 2025 16:31:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:Message-ID:Date:To:Sender:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nYJ23BB8BWAZa3mr2fe7az8vNkAbgqA4QI8oEs3kXoY=; b=BFRC9lA0tXKn3lrU8xpwLEjgxP
	1e3zi2PhWC89lgsXl66gYiBSdcM5R29mc2F4K5JXEUfNZ4zBdhZ0SphQIQ+oCCx+uHiqbh+vDt1sF
	MZ602NT3b76QEXdHXkaGbypyoLUW/ypfuha0llmD+gmxzg/qqCYog5377rE10M4XymDw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vA7wn-0004O6-K7;
	Sat, 18 Oct 2025 14:30:17 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <hsukrut3@gmail.com>) id 1v9zYF-0007FL-JL
 for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Oct 2025 05:32:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+bXCpDXj8HH06scRdWgHTF1ypEvgil7o5Jk+cet0PJw=; b=eCXgT7E+/UNZZoNGlygEiEQiCX
 ezIiyz4p/bkeljWlMkZkVwJ68eCpFhkFUYDVkmCHmuHWagJNqMnwRGMefdcCV0hv3wzUJ4HagiidR
 ygiQnrqNUKpBO+RcKq8rH+XxyVWrRkqM0rUPDUtVAJc7+HALE4UL60GGsqihMfBrka1M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+bXCpDXj8HH06scRdWgHTF1ypEvgil7o5Jk+cet0PJw=; b=K
 IHWxB6SbW+OeCCNeau/UHgQrInBoYppN1AhAWHBQIHKor7ulk2atCN63KeVt7Orl/iMqeUweGa88G
 5nxn/PVK2XLjIjA8/OBg2uJLdTusqu4zxVnrB8oyT5aFugU5zjRAjWYA22xrL6/2TjbcX8NZ2gKTA
 06o+kHVIOIjz4oKw=;
Received: from mail-pf1-f177.google.com ([209.85.210.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1v9zYF-0008PI-3X for jfs-discussion@lists.sourceforge.net;
 Sat, 18 Oct 2025 05:32:23 +0000
Received: by mail-pf1-f177.google.com with SMTP id
 d2e1a72fcca58-7811a02316bso1853361b3a.3
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 17 Oct 2025 22:32:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1760765537; x=1761370337; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+bXCpDXj8HH06scRdWgHTF1ypEvgil7o5Jk+cet0PJw=;
 b=Tq5iwGuiY5IMrdFNRuX32hSUO4s0gEZuoK2hcKRwdQeTpEjMs/WiKdunOKSwfTsQT9
 hAhV6EwvMPzcYJJo0qiszoEh4Oy6mA1LaJ3esxTJzwax6mJmKs2QyvAVOgRqNi3d/N40
 EcKi+SWy6F7K2H6NuKpztRAt4EYhSNt3MQ2G1GZCccHfwIhQ8HBikp6dFf6w7f9misrF
 j+4KaTnSWhrrS3RGTjTKYGFQ7vaEzesvW82FFyNFvG1Uwjk9WHnMtmggMWEd6kzNw7ue
 on1wAt1zAcfnH8q+rUhtabYMu2VZoPxMJ5R6/H5VAGSHCTZVVRa08A+NrNETvfyirXMY
 QZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760765537; x=1761370337;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+bXCpDXj8HH06scRdWgHTF1ypEvgil7o5Jk+cet0PJw=;
 b=TEz+JvAoZGmGLPdtRPUqgxsoo1wx11zDzeFqdN5qM9zTbzi/6f0NBaOc2uagz15uKV
 FKjFNW/qsB2+iddV5iJYi8aEYFK0Tzgm7L/Oo4n1CJ+a5YWRjGDIqkYopXwzJ6OWLdiy
 iObkLmC2aeu66J6XRf9/aL0qZsCiMq3FxbvgBWjof6jaxHiSU42F8zQZS5wSBodvAyUn
 opLhGMeeNPDDeA8A8jVthr1n3bqIUxXiBxF/jg31g97wHHf5NkhGqRMMtFfOuG8VBOnX
 8EbYnLFU6gsppQQdZFvIiDbxWQAUjvJjdcLI7d03zqiDi7KqNfuaVZZjcU2iYuXAO28l
 dsjw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIMPLTInjGft5MNrWrQs37yZOrPCYFHWXGQiKdo4GLSTs94Hcbly4E8Xa17sVuf3xSPVEQ1HO66EyWogwUaQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwMaCx1Cq72PMwLTtFgRSr8pMOliX98w9lJ2j43TIDVdvJA4z3x
 V6XbJkCSUtj+MNPtziObc3/DPgT5Pc6zum1VGzUU21wlMIO4YlghZ/u+
X-Gm-Gg: ASbGncuh5K37OTMRcX0PSBDGAe9qEhymDELOjXHwOuV/MYp27hNib9p3Ba8E7IQubFv
 pPRH3skVxBZTigy4KabJPdH/wHFoDg6xZXkVWuwhGCTG+aztdL/DuPyogV+66HyToZtorzjR5Ob
 jPvE2R+8WuTkIjgZZ1j6W9GxRl/F+ImViJy5QQt90vLv+fthrug+hJCyI/pVkaGrsGOXAqILDdb
 1R9vmBEnlEo9rtHzpvgzHuMmE22ENBbzK942mRYGKkl+GuJI4mLXhLqdL1weYVUVe2JgkN59CGq
 bW8z1zmDzXfjDyiSx9bkuZ5U36/Hv1BzmsXwEizkB20fmNrBq0ipDY/7+ETeWHkmWgO0KWU7nB8
 ukzbBhvwoixN++07+BVJgET9m2Af+TFC9nH3qzrIXEpJsCo5IQ5pWUIQWnqZLTujYIUvG7Fxg/3
 y5H+BDMF7GPkpwO180qg==
X-Google-Smtp-Source: AGHT+IEjMvi12xV9bwndjFQ7hKA5aVscwafh5tgtTUAt+A6OSKb9FUIMqGNsBgpmwqJOzSYcW7TWOQ==
X-Received: by 2002:a05:6a00:b8d:b0:781:7e1:a315 with SMTP id
 d2e1a72fcca58-7a220aafd59mr6902392b3a.22.1760765537239; 
 Fri, 17 Oct 2025 22:32:17 -0700 (PDT)
Received: from hsukr3.. ([2405:201:d019:4872:bd32:daa5:57cd:7884])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7a2300f25cdsm1520149b3a.35.2025.10.17.22.32.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Oct 2025 22:32:16 -0700 (PDT)
To: Dave Kleikamp <shaggy@kernel.org>, Rand Deeb <rand.sec96@gmail.com>,
 Edward Adam Davis <eadavis@qq.com>,
 Ghanshyam Agrawal <ghanshyam1898@gmail.com>,
 Nihar Chaithanya <niharchaithanya@gmail.com>,
 Vasiliy Kovalev <kovalev@altlinux.org>,
 Sukrut Heroorkar <hsukrut3@gmail.com>,
 Arnaud Lecomte <contact@arnaud-lcm.com>,
 jfs-discussion@lists.sourceforge.net (open list:JFS FILESYSTEM),
 linux-kernel@vger.kernel.org (open list)
Date: Sat, 18 Oct 2025 11:00:25 +0530
Message-ID: <20251018053029.226506-1-hsukrut3@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: syzbot reported "UBSAN: shift-out-of-bounds in
 fs/jfs/jfs_dmap.c:1440:48
 shift exponent -1 is negative". The budmin value can have a negative value
 and cause shift-out-of- -bounds from UBSAN. Add a check on budmin immediately
 after reading it from the metapage, and return an error if it's negative.
 This prevents UBSAN reports and correctly treats corrupted metadata as an
 I/O error. 
 Content analysis details:   (0.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
 digit [hsukrut3(at)gmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 [hsukrut3(at)gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v9zYF-0008PI-3X
X-Mailman-Approved-At: Sat, 18 Oct 2025 14:30:16 +0000
Subject: [Jfs-discussion] [PATCH] jfs: validate budmin to prevent
 shift-out-of-bounds in dbAllocAG()
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
From: Sukrut Heroorkar via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Sukrut Heroorkar <hsukrut3@gmail.com>
Cc: skhan@linux.foundation.org, david.hunter.linux@gmail.com,
 syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

syzbot reported "UBSAN: shift-out-of-bounds in fs/jfs/jfs_dmap.c:1440:48
shift exponent -1 is negative".

The budmin value can have a negative value and cause shift-out-of-
-bounds from UBSAN.

Add a check on budmin immediately after reading it from the metapage,
and return an error if it's negative. This prevents UBSAN reports and
correctly treats corrupted metadata as an I/O error.

Reported-by: syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
Closes: https://syzkaller.appspot.com/bug?extid=4b717071f1eecb2972df
Tested-by: syzbot+4b717071f1eecb2972df@syzkaller.appspotmail.com
Signed-off-by: Sukrut Heroorkar <hsukrut3@gmail.com>
---
 fs/jfs/jfs_dmap.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index cdfa699cd7c8..76f4b9322034 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -1372,6 +1372,12 @@ dbAllocAG(struct bmap * bmp, int agno, s64 nblocks, int l2nb, s64 * results)
 	dcp = (struct dmapctl *) mp->data;
 	budmin = dcp->budmin;
 
+	if (unlikely(budmin < 0)) {
+		jfs_err("JFS: dmapctl corruption: budmin=%d", budmin);
+		release_metapage(mp);
+		return -EIO;
+	}
+
 	if (dcp->leafidx != cpu_to_le32(CTLLEAFIND)) {
 		jfs_error(bmp->db_ipbmap->i_sb, "Corrupt dmapctl page\n");
 		release_metapage(mp);
-- 
2.43.0



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
