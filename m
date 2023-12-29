Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C43A820192
	for <lists+jfs-discussion@lfdr.de>; Fri, 29 Dec 2023 22:14:31 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1rJKBF-00079o-Mg;
	Fri, 29 Dec 2023 21:14:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <lists@nerdbynature.de>) id 1rJKBC-00079S-ED
 for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Dec 2023 21:14:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:References:Message-ID:
 In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Ppu78V10sZ2jRO8ZOKkrBw4CdreL+OKe3UacQw/K5cg=; b=WJo1XiSCRuZf/Z5w9ZY+RXx8r+
 8IJZnYDe96ioUnyjumM2IqXw0haYEM2/q8nDy+er8mZy0lTIhUu7eM3xnOZyhMvz5IgT/vvh8FvuF
 GXNrloxSf3S1V4ukMoYJjsQe4Dbe9hO8OS6MhiZ3/Jzv6tjcFsGIhgkRt2arR4zFvEZA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:References:Message-ID:In-Reply-To:Subject:cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Ppu78V10sZ2jRO8ZOKkrBw4CdreL+OKe3UacQw/K5cg=; b=iMHKwAyvrhYcAukQHacfHpZrWV
 0s3y17GgrogIN3Q5cqiVfSgaR5UJhuaPjN8gg7bnN/t5vS2CNeu5hS+SC9xmChA+JymPJjGyDeiFO
 x5DyzazJ2kysB3Wdx1W9FRkp5aq8hQd9uBFPRm6iFzuqPB9NybWX9uG8Hu5oW1Q2BR8I=;
Received: from trent.utfs.org ([94.185.90.103])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1rJKB8-0002fg-E6 for jfs-discussion@lists.sourceforge.net;
 Fri, 29 Dec 2023 21:14:06 +0000
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/simple;
 d=nerdbynature.de; i=@nerdbynature.de; q=dns/txt; s=key1;
 t=1703882935; h=date : from : to : cc : subject : in-reply-to :
 message-id : references : mime-version : content-type : from;
 bh=GMUDd5r6nKSw+Pu9RRn8T1ZPAI7ve8pTZ0H5aGv/UKI=;
 b=S68MrsgRLszT64vcZJ4Yny72i9Ceh6q0QcN4d6V/yoaS2XxfsMchzXaOx7rUDNNoyZNhw
 ZL5CXT95siGoPIzCg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=nerdbynature.de;
 i=@nerdbynature.de; q=dns/txt; s=key0; t=1703882935; h=date : from :
 to : cc : subject : in-reply-to : message-id : references :
 mime-version : content-type : from;
 bh=GMUDd5r6nKSw+Pu9RRn8T1ZPAI7ve8pTZ0H5aGv/UKI=;
 b=YDgX7jwNKC/4ryTQspfGSEWXx1QoIw3cIh1HeQXfK3qYx8IvYWtWc0H0n8e2DOG+CGEcn
 Tx6uy/1aZjcBFsfU+oEK4kxSt9I4Ic0pUcCnhuSX8aJsRveMJkpsRnbHTOyT7QE3nS0Gtzg
 C6vU6SqnrcG/RwjwTjR5/qGOP0gbN18JpnCZ5jd2tgIsdyggRS2svB0O/iWZwsIkguqMs8s
 MiE5OnZnK3BqJUPZ0ytVShwoEViT2H3oznx7fj25y6lcZtQZr3SmzK1AUGYdiA+u9Ml23+0
 TSp4rxU+kO9+DFMXhQc+7URLKfaLA2hQScKX6Y4IJKeS+ty3MLmZtvxbox+g==
Received: from localhost (localhost [IPv6:::1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by trent.utfs.org (Postfix) with ESMTPS id 833E360243;
 Fri, 29 Dec 2023 21:48:55 +0100 (CET)
Date: Fri, 29 Dec 2023 21:48:55 +0100 (CET)
To: Linus Torvalds <torvalds@linuxfoundation.org>
In-Reply-To: <CAHk-=wid2p3NXUtg=iDo1B3urpJT4OWo7-o5OaQ2A6qRCpa39A@mail.gmail.com>
Message-ID: <eb985ad1-2f8e-35cf-69e9-8d4e7394bc0d@nerdbynature.de>
References: <3d428c1b-c11d-4f9a-8f0d-85daf0c2a4cb.bugreport@ubisectech.com>
 <CAHk-=wid2p3NXUtg=iDo1B3urpJT4OWo7-o5OaQ2A6qRCpa39A@mail.gmail.com>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > > [ 119.560427][ T7975] general protection fault, probably
 for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
 > > [ 119.561982][ T7975] KASAN: null-ptr-deref in range [0x00000 [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1rJKB8-0002fg-E6
Subject: Re: [Jfs-discussion] poc.c
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
Cc: shaggy <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Ubisectech Sirius <bugreport@ubisectech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

> > [  119.560427][ T7975] general protection fault, probably for non-canonical address 0xdffffc0000000006: 0000 [#1] PREEMPT SMP KASAN
> > [  119.561982][ T7975] KASAN: null-ptr-deref in range [0x0000000000000030-0x0000000000000037]
> > [  119.563081][ T7975] CPU: 1 PID: 7975 Comm: poc Not tainted 6.7.0-rc7-00003-gfbafc3e621c3 #3
> > [  119.564139][ T7975] Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.15.0-1 04/01/2014
> > [  119.565257][ T7975] RIP: 0010:write_special_inodes+0xa6/0x170
> > [  119.565951][ T7975] Code: 8b 7d 30 41 ff d4 48 8d 7b 28 48 89 f8 48 c1 e8 03 80 3c 28 00 0f 85 ab 00 00 00 4c 8b 6b 28 49 8d 7d 30 48 89 f8 48 c1 e8 03 <80> 3c 28 00 0f 85 88 00 00 00 49 8b 7d 30 41 ff d4 48 8d bb b0 00


FWIW, this has been reported by Syzkaller some time ago:

 > general protection fault in write_special_inodes
 > https://syzkaller.appspot.com/bug?extid=c732e285f8fc38d15916

C.
-- 
BOFH excuse #274:

It was OK before you touched it.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
