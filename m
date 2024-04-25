Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 270C58B2399
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 16:11:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rzzoO-0007xg-QH;
	Thu, 25 Apr 2024 14:10:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1rzzoN-0007xT-It
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:10:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=omf2YA5ZrMAZoe/viDc+5pR/0l+e+gj7ozLHZXJSd+A=; b=R8ZQIS7rxMxtXUpCB2TiKYUAIN
 Qkt44qdiMdo6wLK4tGI65D5V9XIcbtuIzCbqjFdaz7fLRG37/rVbBsRWII+GdvcolVWRRMjhaEe8I
 4uyr5AsnFnKWjIo0EYpQ4rUCaSvw3mVlFtzWvNaT5aTw3u6gimn4e2srTwHJk70q6ddo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=omf2YA5ZrMAZoe/viDc+5pR/0l+e+gj7ozLHZXJSd+A=; b=Tt4Xt5ozdRHiFwrlee83Odeube
 tt9FjpHRtyB2SXboifp8viFIGpvWWSNIf5VMyWQ562DRMiRcugz+1up/5FA8K6/s5w/EeANuZml2v
 nJMMjmw+sXbOHeWeswo4VpQTfcbLGXvBw7i1r/L8fft9r3plc1Trhaoc1IRqGYm0v/FY=;
Received: from mail-il1-f175.google.com ([209.85.166.175])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rzzoM-0002Um-AN for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:10:55 +0000
Received: by mail-il1-f175.google.com with SMTP id
 e9e14a558f8ab-36a1b0777b7so4338775ab.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 07:10:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714054244; x=1714659044; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=omf2YA5ZrMAZoe/viDc+5pR/0l+e+gj7ozLHZXJSd+A=;
 b=gPgAUD5FwWb+xN6e84FSVBi3kQGavxdP7w1gYknZwwz/TzTALNutnylbR7xwby3DUA
 wMqPUSImPo/4fxXvBH4G2VhZf/7LEXD8BDuFLl5BLm8v5LI0bO3HEcp0JYxuHehsY9p9
 6FukmCFc5xXspTwgNpexlqqXq5UPctUhYmNdHzdkIXCOKZmJLvYOS94bFWbvLZ/R0Yup
 dt4ZRuRFOIl7zzHpzyFL5nqYAlX/n6VxV90Si0+ziX1t419zyfzS0UbPQpQ0i4AlEQKa
 +BBUCMD5PbuT2GgAOB6tyVkA6hkHeYdy2nTf0LsM17KDM0fgWX28IQhMogOIWX//0psE
 uF9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714054244; x=1714659044;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=omf2YA5ZrMAZoe/viDc+5pR/0l+e+gj7ozLHZXJSd+A=;
 b=os8Zm76UlARGzz/9pA2tszOf5VFMrn35JxNYeIj8zvUoOtF9HG0FRtcSnbYHAsi4s2
 dWDUolnZp1bWzio0y5tJhp1A82lytYEn2I0iFZBnQm5o+gCT6Ep4vRAsYQ64irMI+XPW
 rHCefy//LZDMLd1Wy2T3YwW2ignGZzb3wX1yAKXFGxoApAMJIMuoNXB0zPWohLlmdoTK
 5+hsyVwnvO1B5e+agGfu47iGNP6gonrOCw2M91UxH7V5bzgZA15hbrN9VmSn2UbQ9hQD
 Xd2zSoOqFDPXymCvmMBjpq9rCBw0RZGVGMtQLwHXUkG9vfZgt8Ccqca6W4NTJVJQeG9U
 f2Qg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVHiCq0Mno2HbrtLd8pmBZD3GedYhp/ceEgLu3IwTPMiLKJ9qtlbw9kYmgVFnb/wVnb1AYL2qJnHGYTrpfQR39/SKb6SffyrloNwt5RopvZzIuKAG8=
X-Gm-Message-State: AOJu0Yxk0Wvv86v24+mMHwwLduw3t3AJ17UeIsRn3DgERABYnyrOAsD+
 VaCjjpzPhEu272BcSebTxGEkb0mM4erdNbqamLnbw/TlHxy02AT5
X-Google-Smtp-Source: AGHT+IEDaTjEy8k8m8tzbhSWJ6HsiVjaRVSd0iaXtgpvcsNwjfY56ICL0yTaVf6IzBy/8laib3r9Eg==
X-Received: by 2002:a05:6e02:1e0a:b0:36c:c6c:dc27 with SMTP id
 g10-20020a056e021e0a00b0036c0c6cdc27mr6923795ila.10.1714054243955; 
 Thu, 25 Apr 2024 07:10:43 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 y5-20020a637d05000000b005f3d2a9a91bsm11616066pgc.89.2024.04.25.07.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 07:10:43 -0700 (PDT)
To: willy@infradead.org
Date: Thu, 25 Apr 2024 23:10:38 +0900
Message-Id: <20240425141038.47054-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <ZipSO4ITxuy2faKx@casper.infradead.org>
References: <ZipSO4ITxuy2faKx@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Matthew Wilcox wrote: > If that's the problem then the
 correct
 place to detect & reject this is > during mount, not at inode free time.
 I fixed the patch as you said. If you patch in this way, the file system will
 not be affected by the vulnerability at all due to the code structure. 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.85.166.175 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aha310510[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aha310510[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.175 listed in wl.mailspike.net]
X-Headers-End: 1rzzoM-0002Um-AN
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix array-index-out-of-bounds in
 diFree
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
Cc: shaggy@kernel.org, brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jlayton@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 syzbot+241c815bda521982cb49@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Matthew Wilcox wrote:
> If that's the problem then the correct place to detect & reject this is
> during mount, not at inode free time.

I fixed the patch as you said. If you patch in this way, the 
file system will not be affected by the vulnerability at all 
due to the code structure.

Thanks.

---
 fs/jfs/jfs_imap.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/fs/jfs/jfs_imap.c b/fs/jfs/jfs_imap.c
index 2ec35889ad24..ba0aa2f145cc 100644
--- a/fs/jfs/jfs_imap.c
+++ b/fs/jfs/jfs_imap.c
@@ -290,7 +290,7 @@ int diSync(struct inode *ipimap)
 int diRead(struct inode *ip)
 {
 	struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
-	int iagno, ino, extno, rc;
+	int iagno, ino, extno, rc, agno;
 	struct inode *ipimap;
 	struct dinode *dp;
 	struct iag *iagp;
@@ -339,6 +339,9 @@ int diRead(struct inode *ip)
 
 	/* get the ag for the iag */
 	agstart = le64_to_cpu(iagp->agstart);
+	agno = BLKTOAG(agstart, JFS_SBI(ip->i_sb));
+	if(agno >= MAXAG || agno < 0)
+		return -EIO;
 
 	release_metapage(mp);
 
-- 
2.34.1


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
