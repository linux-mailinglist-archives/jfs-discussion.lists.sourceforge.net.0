Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 51A9275996A
	for <lists+jfs-discussion@lfdr.de>; Wed, 19 Jul 2023 17:21:09 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qM8yt-0000xN-0o;
	Wed, 19 Jul 2023 15:20:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lists@nerdbynature.de>) id 1qM8yp-0000x4-O1
 for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 15:20:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JJZKU0dN5dkRnIwvM382SE4j76CkHGR7cDQjcAA5aPs=; b=Qc54UY3Gv7bDA1wb8r5LAGOEUF
 rSJP7zdc9XBIwq5zuI8Khbw/oIV7/wMEq3DaAI6h4SDUAurkqOCp8kBGDZwBef+B9TyRfZl+ROau9
 uVp2aHfHOMHTGKX6o4WI9wLDGe2mFX5ki+3kbD5mR5AouqsY3aF1sNd0qLEWCWddcYEA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JJZKU0dN5dkRnIwvM382SE4j76CkHGR7cDQjcAA5aPs=; b=dqRogi+4YETQBMn5iddGyKZhFF
 3Y0xFHTRGzDQtW/QHY3nPKSyWMX8NMx8fMQzlmPfrNHShxEjVM481kP+dJ2Qnu7AAc60Rf9aX+FLb
 3Jtw7fwZClah0T7/0zNDCde9Ynv6HmK/AUc7lKt1AoEgR0R77lIF22igHtQtuKW9kYsY=;
Received: from trent.utfs.org ([94.185.90.103])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qM8yn-00073A-NM for jfs-discussion@lists.sourceforge.net;
 Wed, 19 Jul 2023 15:20:42 +0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/simple;
 d=nerdbynature.de; i=@nerdbynature.de; q=dns/txt; s=key1;
 t=1689778933; h=date : from : to : cc : subject : in-reply-to :
 message-id : references : mime-version : content-type : from;
 bh=xIYPqanAqkNAcIDfDD9JYV48Ktk2KbeO1AnpEFpuS/I=;
 b=vcdbASREu5aB4xdwGWi8S7mPC8bFlQ0PgNxR0yfMBzxKb9E1vXhqBeg1cVjgtmQSNpU0t
 fFf5m84sO0Mk+HwCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nerdbynature.de;
 i=@nerdbynature.de; q=dns/txt; s=key0; t=1689778933; h=date : from :
 to : cc : subject : in-reply-to : message-id : references :
 mime-version : content-type : from;
 bh=xIYPqanAqkNAcIDfDD9JYV48Ktk2KbeO1AnpEFpuS/I=;
 b=Tk4ambya8ok6FoEYIxOG23sv3Who4TleXFWWJQ1CHPekpI4zK9a0uZCEcd4gzcRXvcgLM
 IteT/7ZVNrzjptE7BrT/fCv/wdO5pjFwDbD/f+7lWB2+nzq9dVaINbYYgaTo95+txHg3nrJ
 lN5mPSKNVz4b1xfN5NQumzzt+nxzj6DUT8cd08rnqZwvOmqj/vUwOW9Co2tAemOs5MUVUbi
 eUkVFOfaG/Kwz/6xsSUVyp9wlwCvM0SKxOlbXH7GrcqG7lQAl797aOeGLhrUqt/UQdF2R0C
 aGsrK4fSAQCYd+wxmenyRR+HTGvo0X0WmOKDdOmlUWoIzV0o/tQK9COYSHuQ==
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id 3F2345F998;
 Wed, 19 Jul 2023 17:02:13 +0200 (CEST)
Date: Wed, 19 Jul 2023 17:02:13 +0200 (CEST)
To: syzbot <syzbot+96eb4e0d727f0ae998a6@syzkaller.appspotmail.com>
In-Reply-To: <97a9c205-2074-07f8-ae9d-9f2b4aebbf9a@oracle.com>
Message-ID: <30f03978-3035-a28e-c097-112036901bcb@nerdbynature.de>
References: <0000000000002bfa570600c477b3@google.com>
 <CAHmME9reBny-ufJp58uOg+KdMptircBRhLFd-N2KwxNUp6myTA@mail.gmail.com>
 <97a9c205-2074-07f8-ae9d-9f2b4aebbf9a@oracle.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, 18 Jul 2023, Dave Kleikamp via Jfs-discussion wrote:
 > Maybe not. It could possibly fixed by: >
 https://github.com/kleikamp/linux-shaggy/commit/6e2bda2c192d0244b5a78b787ef20aa10cb319b7
 Let's try this: 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1qM8yn-00073A-NM
Subject: Re: [Jfs-discussion] [syzbot] [wireguard?] [jfs?] KASAN:
 slab-use-after-free Read in wg_noise_keypair_get
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
From: Christian Kujau via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Christian Kujau <lists@nerdbynature.de>
Cc: "Jason A. Donenfeld" <Jason@zx2c4.com>, kuninori.morimoto.gx@renesas.com,
 netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, edumazet@google.com, broonie@kernel.org,
 povik+lin@cutebit.org, kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net,
 wireguard@lists.zx2c4.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Tue, 18 Jul 2023, Dave Kleikamp via Jfs-discussion wrote:
> Maybe not. It could possibly fixed by:
> https://github.com/kleikamp/linux-shaggy/commit/6e2bda2c192d0244b5a78b787ef20aa10cb319b7

Let's try this:

#syz test: https://github.com/kleikamp/linux-shaggy.git 6e2bda2c192d0244b5a78b787ef20aa10cb319b7

-- 
BOFH excuse #371:

Incorrectly configured static routes on the corerouters.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
