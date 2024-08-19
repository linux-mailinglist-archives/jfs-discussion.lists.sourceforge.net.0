Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 925DE956253
	for <lists+jfs-discussion@lfdr.de>; Mon, 19 Aug 2024 06:06:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1sfteZ-0001Zl-Ns;
	Mon, 19 Aug 2024 04:05:59 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1sfteX-0001Zb-UU
 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Aug 2024 04:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+4LdY4h9yDY+hKUVhC9nqU4DzmhWAha2389eTWEX1II=; b=j7WYNqj7ER/ZM8ul2PKbGH7tm6
 /o13DXDF34KIJqLTEiQlC1Qd8Uj11ItYlcWisBeo+PbRXiAiYX3LJh2hvafpM+a90f6R+38uFCN27
 9kMLXeoLwgfrXIRQ00T2ei3SuOHo/B+JHl3BIEAgSlFMKwW0uWAoUoSby6MhfVTdVF00=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:Cc:To:From
 :Sender:Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=+4LdY4h9yDY+hKUVhC9nqU4DzmhWAha2389eTWEX1II=; b=e
 1Gaq6u7dZhSJZbR3s0l8M78fby2RKp8LTCP9qw5IBt0+fm/gRjZE4Qtxof4SlOPSEfKmwP2E44nyk
 yyLJem9nT0emu1PaOqyTU55kdS+w59JiTDSNXpm7xfhU1M9LVZal1n3bLYK1jffgoSvkZ1hCJbRWG
 nEaPn4fKXinRsiv0=;
Received: from mail-il1-f182.google.com ([209.85.166.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1sfteX-0005ee-77 for jfs-discussion@lists.sourceforge.net;
 Mon, 19 Aug 2024 04:05:57 +0000
Received: by mail-il1-f182.google.com with SMTP id
 e9e14a558f8ab-39d47a9ffb9so4370575ab.1
 for <jfs-discussion@lists.sourceforge.net>;
 Sun, 18 Aug 2024 21:05:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1724040351; x=1724645151; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:from:to:cc:subject:date:message-id:reply-to;
 bh=+4LdY4h9yDY+hKUVhC9nqU4DzmhWAha2389eTWEX1II=;
 b=HPiLF9gp6krkSZzgmMWNssxgQcK3v5qsK7GqRSHrqYDjToZs71nbKdJFxgUgUeg0XM
 dKGavcaGCqd+Tm4/tfDSgg2YNoipOzK7h9f5rdiBlB3eT3LPzTNg6gw/+lkgIRXhNzLt
 1V9yXCEacd4uu4lmKNRpiIfjKEzTLYUavry6Rc4x1iWCq0+z0GX+ibL3WtdHrhjZILb7
 fEtIAdmljsiVYX6S+zk+6MV3R+mBmb5LggffWrEPLlyy5De1MwQXvkJDomDAmLeFMvr+
 C2sr+J69HSvDh+EahEHkejBJwLzGik3Lvxc5E2SP6oWMNk7Q5xyn/jnlLQEAlSG1/W0x
 C1mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1724040351; x=1724645151;
 h=content-transfer-encoding:mime-version:message-id:date:subject:cc
 :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=+4LdY4h9yDY+hKUVhC9nqU4DzmhWAha2389eTWEX1II=;
 b=OIrleCLcz86XpE0Cr5jNygjWtwWgNLX0rh7hNIlFQ2F8K8bI1CO0aF5XgcJ70wRwX2
 WS78Bbt5Gk6ZvCLY579xOq6cVkAH07YIX71bL+jaSn5NnJVl6opd8xTIUj8Yqw98wRAC
 ZKoJVQgOvNHF4osWAEro9LW378BPLiwydbmPR9gBkkpl195a8pe2t08jM15TeJCAuHqn
 5LcmMTHsVyBJr+lvfT+FuBj9TRETwaZmTNznMYD0yXIjyXwiMfriKyINvvLsP8c/KW/h
 4CN+pC5AvaRDWY2/9apnMwMcfU9fogDBnltLdnuS3vN9ywoNGkAYQeMPBwaefghBlJkN
 OTYw==
X-Gm-Message-State: AOJu0YzRmnxeHHjUU9RsGP0Cb1Rs3J0R1sOgxXbKasKuLGMqbUiCld1E
 A9T344GHpA26I1Q64SrhDZ1m+qWOnroloSj6BAgwK3x3c92IzJsS
X-Google-Smtp-Source: AGHT+IEAjUCYT3zvHCA5MNy3LVXViK+m5Io+GneJY2cR8IqEQqYk4M3N0sbqa1ZdqpP75SHBKW+CiA==
X-Received: by 2002:a05:6e02:1a41:b0:39a:ebcd:f2fa with SMTP id
 e9e14a558f8ab-39d26d64460mr124287575ab.20.1724040351297; 
 Sun, 18 Aug 2024 21:05:51 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-7127ae0e246sm5855581b3a.70.2024.08.18.21.05.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 18 Aug 2024 21:05:50 -0700 (PDT)
To: shaggy@kernel.org,
	dave.kleikamp@oracle.com
Date: Mon, 19 Aug 2024 13:05:46 +0900
Message-Id: <20240819040546.182577-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  In dbNextAG() ,
 there is no check for the case where bmp->db_numag
 is greater or same than MAXAG due to a polluted image,
 which causes an out-of-bounds.
 Therefore, a bounds check should be added in db [...] 
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.182 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.182 listed in bl.score.senderscore.com]
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to
 DNSWL was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [209.85.166.182 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1sfteX-0005ee-77
Subject: [Jfs-discussion] [PATCH] jfs: fix out-of-bounds in dbNextAG() and
 diAlloc()
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
From: Jeongjun Park via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jeongjun Park <aha310510@gmail.com>
Cc: Jeongjun Park <aha310510@gmail.com>, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

In dbNextAG() , there is no check for the case where bmp->db_numag is 
greater or same than MAXAG due to a polluted image, which causes an 
out-of-bounds. Therefore, a bounds check should be added in dbMount().

And in dbNextAG(), a check for the case where agpref is greater than 
bmp->db_numag should be added, so an out-of-bounds exception should be 
prevented.

Additionally, a check for the case where agno is greater or same than 
MAXAG should be added in diAlloc() to prevent out-of-bounds.

Reported-by: Jeongjun Park <aha310510@gmail.com>
Fixes: 1da177e4c3f4 ("Linux-2.6.12-rc2")
Signed-off-by: Jeongjun Park <aha310510@gmail.com>
---
 fs/jfs/jfs_dmap.c | 4 ++--
 fs/jfs/jfs_imap.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/jfs/jfs_dmap.c b/fs/jfs/jfs_dmap.c
index 5713994328cb..0625d1c0d064 100644
--- a/fs/jfs/jfs_dmap.c
+++ b/fs/jfs/jfs_dmap.c
@@ -187,7 +187,7 @@ int dbMount(struct inode *ipbmap)
 	}
 
 	bmp->db_numag = le32_to_cpu(dbmp_le->dn_numag);
-	if (!bmp->db_numag) {
+	if (!bmp->db_numag || bmp->db_numag >= MAXAG) {
 		err = -EINVAL;
 		goto err_release_metapage;
 	}
@@ -652,7 +652,7 @@ int dbNextAG(struct inode *ipbmap)
 	 * average free space.
 	 */
 	for (i = 0 ; i < bmp->db_numag; i++, agpref++) {
-		if (agpref == bmp->db_numag)
+		if (agpref >= bmp->db_numag)
 			agpref = 0;
 
 		if (atomic_read(&bmp->db_active[agpref]))
diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 1407feccbc2d..a360b24ed320 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -1360,7 +1360,7 @@ int diAlloc(struct inode *pip, bool dir, struct inode *ip)
 	/* get the ag number of this iag */
 	agno = BLKTOAG(JFS_IP(pip)->agstart, JFS_SBI(pip->i_sb));
 	dn_numag = JFS_SBI(pip->i_sb)->bmap->db_numag;
-	if (agno < 0 || agno > dn_numag)
+	if (agno < 0 || agno > dn_numag || agno >= MAXAG)
 		return -EIO;
 
 	if (atomic_read(&JFS_SBI(pip->i_sb)->bmap->db_active[agno])) {
--


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
