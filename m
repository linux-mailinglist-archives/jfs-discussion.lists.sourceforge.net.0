Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1358B23FB
	for <lists+jfs-discussion@lfdr.de>; Thu, 25 Apr 2024 16:25:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1s001r-0002JX-OO;
	Thu, 25 Apr 2024 14:24:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <aha310510@gmail.com>) id 1s001q-0002JN-Ml
 for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:24:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ov5bxwmvvI6FmzNC+CS5oRE+ne73F6PO42lI8VcTp+Y=; b=Pxxz64gqtzXpY06DLzw59b3qYN
 KlKGM10ee+J7sx8qtjccPM61eqzQLu47erUWGIj4eN9dkp8ER4PU4GdPaSFClQwfNgNJFD6ySdSKZ
 OJjCWQXhSoS8V2xvtSM6+HV1PnRvDP3j4Z4ogMkcUTtbcYiy0uM+czGFqa17QMIbkD7c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ov5bxwmvvI6FmzNC+CS5oRE+ne73F6PO42lI8VcTp+Y=; b=bfJVodP+D7la+Ims18tiWE6MIG
 KJLtKV7NjkfyyfQIPtX3xs8dw4A6JsPJpdjreNJuZX1hM366sFkS2f52b9YXKTWjvajPuOI3A4H+R
 qgfvbW3WO+on+T/pRUN6wqnDzJ1fgB4vB1Mmbmm8vDrqbBbmg8zIoIHfHCkJwSaGbLiU=;
Received: from mail-pf1-f177.google.com ([209.85.210.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1s001p-0003uB-OR for jfs-discussion@lists.sourceforge.net;
 Thu, 25 Apr 2024 14:24:50 +0000
Received: by mail-pf1-f177.google.com with SMTP id
 d2e1a72fcca58-6f30f69a958so933170b3a.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 25 Apr 2024 07:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1714055079; x=1714659879; darn=lists.sourceforge.net;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ov5bxwmvvI6FmzNC+CS5oRE+ne73F6PO42lI8VcTp+Y=;
 b=MAQTStchhwPT/XXx0+rGlcNzoiild3YMBFE2I0yr1lFBHc75za1JPsq/10IXcEDEAi
 NGKnHGCydIwKK+hZTMlJoyzAclaqLAFH3rM4/+uu+ebLyvW2Q1ZYCI0FPonJcUxotwyI
 ezOQg5EibGyj7qjJu4s0dCEnRwC/Yho4yw23a1zYVKhUNf46xriy2J4ROHRPgTxcPppV
 JX+HX1Vag6Elp6cH6k9OWSx4D+7ikrjMcD3fiLArUGFMEgDSJcQEQ6ZEt/jR2P5HI2n8
 55ApBLAWlYQ57nG/HQwBuAaTWpb4J3my3ETyIQBOFDbXmHiJGnr/gwU/lU/P4Vqa5kjc
 zCFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1714055079; x=1714659879;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ov5bxwmvvI6FmzNC+CS5oRE+ne73F6PO42lI8VcTp+Y=;
 b=Yc6RFuJjM7xmKkR352L6PO5tliGcfQCRUqXvQwSIKFF5kHXu0pH0RXnSbNCLm9etJ8
 ZvAoES7sKTcsR4d8aEQ/v3/Xn9gn4eK2uxSwyPmjJs/z2Nai5gS0mx0wk6qKQH95DItB
 2ZsY6LoUmSfFKPwp19SYtDDdSAW01j20EDYPyKbqe3H4I3KGCjRRmjBXZUvcTSoPIe/Z
 kVs6hiy3pPZDioPogGIY7UscfyNK9KYNyVXUiCW5X5RyUe94TY84f1nl1D36TdqPWUS4
 gylF/M0BA2OL4ELSeawL++5g/tAPnM/PW4ThYQNUTreTzH7S75e85EHTPRBCO6gEImaI
 urQw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUApbOv3+z2C+xg0UO4WQdClRJp/CwRra7lzjzUbfT5lq7cjwx9JDvofrn1w/BEYw6x+8Njm6WRosVrmfLIaEfH4pRIuYUIaw9yVhiYpKBPDsaljzo=
X-Gm-Message-State: AOJu0Ywrym0nIQaLctxkHwg8ipFX8iKhJLO/36hoKC2s3pZWqyREVKnl
 RLoYsoXx7/+vC7HBrx0FHdJrrUPRu9P1zrvHfMunThDakQdF2TIa
X-Google-Smtp-Source: AGHT+IEWCA4gurmdVJk2gwjTze9EF8EfmZXQB8iAnLbJ8WfHDopZJXOL+qdyhmh86ykJJU1aT3nMNA==
X-Received: by 2002:a05:6a00:3a21:b0:6ed:caf6:6e4b with SMTP id
 fj33-20020a056a003a2100b006edcaf66e4bmr7175094pfb.18.1714055078988; 
 Thu, 25 Apr 2024 07:24:38 -0700 (PDT)
Received: from kernelexploit-virtual-machine.localdomain ([121.185.186.233])
 by smtp.gmail.com with ESMTPSA id
 i6-20020aa787c6000000b006e6b52eb59asm13178634pfo.126.2024.04.25.07.24.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 25 Apr 2024 07:24:38 -0700 (PDT)
To: willy@infradead.org
Date: Thu, 25 Apr 2024 23:24:34 +0900
Message-Id: <20240425142434.47481-1-aha310510@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
References: <Zipl4PQ9Q7sBlMCt@casper.infradead.org>
MIME-Version: 1.0
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Matthew Wilcox wrote: > It should be checked earlier than
 this. There's this code in > dbMount(). Why isn't this catching it? This
 vulnerability
 occurs because a very large value can be passed to iagp->agstart. So that
 code doesn't prevent the vulnerability. 
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.177 listed in list.dnswl.org]
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
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.177 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1s001p-0003uB-OR
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
> It should be checked earlier than this.  There's this code in
> dbMount().  Why isn't this catching it?

This vulnerability occurs because a very large value can be passed 
to iagp->agstart. So that code doesn't prevent the vulnerability.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
