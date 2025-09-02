Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E2047B44374
	for <lists+jfs-discussion@lfdr.de>; Thu,  4 Sep 2025 18:46:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:MIME-Version:References:Message-ID:To:From:Date:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SJjcs10brsOeOYPd6WrLb99PfJFm0m+Z8WS4rwVzDjE=; b=MWmqIly4Pz5ACSjx8R8lpX95ai
	SVOdwf01lmNHZN03c4jwmLqgCC7ggigZckxEeEGeBinIVPy9Cr2DbaD1k5FH+GFplrjooeFl+wtXm
	umeUIxE5yV2v9ihs++5378TmL9icKI/fshU87ugmBs/7uwKJ8orgfc/39DsAwd/YITyo=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1uuD6W-0005gJ-Li;
	Thu, 04 Sep 2025 16:46:32 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dave@stgolabs.net>) id 1utSgC-0002P3-Uk
 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Sep 2025 15:12:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DRZMJhVX4LzPqmwkjT3d+FOTiKORmaj3h8jd47mnvis=; b=gt9nUMf6JyHXEJ9NVp9SsZhU7/
 BQ9Uz72CPEiwwQcoJ2FlUTQeQqPTYiLqphee9y6FD0MwLLOdPjzo5yHMzDq1oO2Hns8dSDAzyNXg7
 nXxSOLd3HMFMncO4fWdLKXkO1YlrvrIHsqt4p9XlxZYHCvC/Iu6TgQjapXT0V4ImdYvQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DRZMJhVX4LzPqmwkjT3d+FOTiKORmaj3h8jd47mnvis=; b=hdhCkr09FiXYvQ6E1qRXFwC+y7
 A3cjbaarvYlVMw63INM/h+pNMA4ngXnPFJhtrHWqUMzm2Cpnltz7GpNY2F7ZmKjQdCquVA3FYzH6R
 B9pTS51IbbvyqxJijBoZ2MELgmij7vvmF1b+qzXplclyHZH+EZczCNZuQgPUyIfWGDOM=;
Received: from giant.ash.relay.mailchannels.net ([23.83.222.68])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1utSgC-0002Iw-W0 for jfs-discussion@lists.sourceforge.net;
 Tue, 02 Sep 2025 15:12:17 +0000
X-Sender-Id: dreamhost|x-authsender|dave@stgolabs.net
Received: from relay.mailchannels.net (localhost [127.0.0.1])
 by relay.mailchannels.net (Postfix) with ESMTP id CB6D48533F;
 Tue,  2 Sep 2025 14:46:59 +0000 (UTC)
Received: from pdx1-sub0-mail-a218.dreamhost.com
 (100-102-100-57.trex-nlb.outbound.svc.cluster.local [100.102.100.57])
 (Authenticated sender: dreamhost)
 by relay.mailchannels.net (Postfix) with ESMTPA id 26FB484F45;
 Tue,  2 Sep 2025 14:46:59 +0000 (UTC)
ARC-Seal: i=1; s=arc-2022; d=mailchannels.net; t=1756824419; a=rsa-sha256;
 cv=none;
 b=d4SI0fkmOUSX2SGsH3tGmzA5T7O38Rb2zp3OVz0EZyQd+gAfR0U6gz/TCQIvNw0eilrIYR
 j7fSHsvtLaaG7qTJOzWy+AN7n0Jw6VTr+vT7pwwhmdV5nN3Yi1fNgUHDkw8+MnyqYROENf
 TJwiaFLP5hqiwdMDUubbK4NelDCbWRQTkabhZH4zgcPiz3s4cNx8LP2O+DOQTNF3ozgfqf
 vCh6LTaH3zgwqM+rj6h5YOGNEXHMDn2Y+kE77q1f7Mfu3GQUQnPlmnGN+PN+KyACX8z38m
 K6bT1bLpB7G1Sjc80nSsLE6hc41Fo6hAbnkakKgGmyZOVc17FTaQme+NZM+a+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed;
 d=mailchannels.net; s=arc-2022; t=1756824419;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references:dkim-signature;
 bh=DRZMJhVX4LzPqmwkjT3d+FOTiKORmaj3h8jd47mnvis=;
 b=blLyN6tNLXUZo4Qn8DwbQL+wqTwSMr2D8fftXutauH3fR0J9UeDxnlzJ9Gozn2t8Yh+MnI
 WoYkDYLHDyeY5oH4D8Uo2yPE6/S8H9n5wyW7Ran/gboLRHdAkTFeId3jJ/8z7CQuB101r1
 c5sngHBottpeXNUq7RlAhTf38guMBoIQ6A5g8OFpkGDi+5HSVvYBBK1AU/TpkykGLcd7HM
 Ht5JM1EWmp1GW+kj7NQ2UkNyVEJ4uutBY5gBcRsuyYE6DXNuNUcdzk+PWLlPoHAdjyU5NM
 On7H2AYc0rLCFzXBgAtyoRfKNylmEAoh3Oi00Vg3D9Ck5lM47CRn5ftS8qhWAA==
ARC-Authentication-Results: i=1; rspamd-7b4c58cfff-wm9q6;
 auth=pass smtp.auth=dreamhost smtp.mailfrom=dave@stgolabs.net
X-Sender-Id: dreamhost|x-authsender|dave@stgolabs.net
X-MC-Relay: Neutral
X-MailChannels-SenderId: dreamhost|x-authsender|dave@stgolabs.net
X-MailChannels-Auth-Id: dreamhost
X-White-Thoughtful: 6dfc35c35855886b_1756824419657_1353450583
X-MC-Loop-Signature: 1756824419657:4042092830
X-MC-Ingress-Time: 1756824419657
Received: from pdx1-sub0-mail-a218.dreamhost.com (pop.dreamhost.com
 [64.90.62.162]) (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384)
 by 100.102.100.57 (trex/7.1.3); Tue, 02 Sep 2025 14:46:59 +0000
Received: from offworld (syn-076-167-199-067.res.spectrum.com [76.167.199.67])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 (Authenticated sender: dave@stgolabs.net)
 by pdx1-sub0-mail-a218.dreamhost.com (Postfix) with ESMTPSA id 4cGT8y0brxz5x; 
 Tue,  2 Sep 2025 07:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stgolabs.net;
 s=dreamhost; t=1756824419;
 bh=DRZMJhVX4LzPqmwkjT3d+FOTiKORmaj3h8jd47mnvis=;
 h=Date:From:To:Cc:Subject:Content-Type;
 b=ahFuXh6TLfV1SNfdspKZSAUyRRCEMTayPVRx7ctfIpGBahfb0Dp/YnYNoWAl/2nci
 ED7kWBbA884J1CmHlDqoolEsxeLcGz1xNnbHoDXyjfMEOOjAQ5fWQbK0eiRExb1jwZ
 r3njvCgIJuU/KHBqHKbD26Ra3FupmSiZ2oBtXnvd+PbF50gWUH4xvCOfiWkgO20Xv0
 Pn7cu4FaKJUDP53K20BbVlOyA8K9AKlEuadnFFmy4/I/dbtzrYCrbH0Mc3IQRITR8I
 oJvxhxZV2ueEMqbkRYKQR5Kyuo0N1S5o9VIF0erx5qJi+L7aDHi6pehxfM3fZ94MAz
 nLjRGrHw1V41Q==
Date: Tue, 2 Sep 2025 07:46:55 -0700
From: Davidlohr Bueso <dave@stgolabs.net>
To: syzbot <syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com>
Message-ID: <20250902144655.5em4trxkeks7nwgx@offworld>
Mail-Followup-To: syzbot
 <syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com>, 
 akpm@linux-foundation.org, brauner@kernel.org, frank.li@vivo.com,
 glaubitz@physik.fu-berlin.de, jack@suse.cz,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org, mcgrof@kernel.org,
 shaggy@kernel.org, slava@dubeyko.com,
 syzkaller-bugs@googlegroups.com, viro@zeniv.linux.org.uk,
 willy@infradead.org
References: <00000000000091e466061cee5be7@google.com>
 <68b55245.050a0220.3db4df.01bc.GAE@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <68b55245.050a0220.3db4df.01bc.GAE@google.com>
User-Agent: NeoMutt/20220429
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, 01 Sep 2025, syzbot wrote: >syzbot has bisected this
 issue to: > >commit 5b67d43976828dea2394eae2556b369bb7a61f64 >Author:
 Davidlohr
 Bueso <dave@stgolabs.net> >Date: Fri Apr 18 01:59:17 2025 +0000 > > fs/buffer:
 use sleeping ve [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [23.83.222.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1utSgC-0002Iw-W0
X-Mailman-Approved-At: Thu, 04 Sep 2025 16:46:30 +0000
Subject: Re: [Jfs-discussion] [syzbot] [hfs?] INFO: task hung in
 deactivate_super (3)
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
Cc: shaggy@kernel.org, brauner@kernel.org, jack@suse.cz, frank.li@vivo.com,
 syzkaller-bugs@googlegroups.com, jfs-discussion@lists.sourceforge.net,
 willy@infradead.org, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 mcgrof@kernel.org, viro@zeniv.linux.org.uk, glaubitz@physik.fu-berlin.de,
 linux-fsdevel@vger.kernel.org, akpm@linux-foundation.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, 01 Sep 2025, syzbot wrote:

>syzbot has bisected this issue to:
>
>commit 5b67d43976828dea2394eae2556b369bb7a61f64
>Author: Davidlohr Bueso <dave@stgolabs.net>
>Date:   Fri Apr 18 01:59:17 2025 +0000
>
>    fs/buffer: use sleeping version of __find_get_block()

I don't think this bisection is right, considering this issue was first
triggered last year (per the dashboard).

Thanks,
Davidlohr

>
>bisection log:  https://syzkaller.appspot.com/x/bisect.txt?x=101ba1f0580000
>start commit:   c8bc81a52d5a Merge tag 'arm64-fixes' of git://git.kernel.o..
>git tree:       upstream
>final oops:     https://syzkaller.appspot.com/x/report.txt?x=121ba1f0580000
>console output: https://syzkaller.appspot.com/x/log.txt?x=141ba1f0580000
>kernel config:  https://syzkaller.appspot.com/x/.config?x=bd9738e00c1bbfb4
>dashboard link: https://syzkaller.appspot.com/bug?extid=cba6270878c89ed64a2d
>syz repro:      https://syzkaller.appspot.com/x/repro.syz?x=10857a62580000
>C reproducer:   https://syzkaller.appspot.com/x/repro.c?x=14f5ce34580000
>
>Reported-by: syzbot+cba6270878c89ed64a2d@syzkaller.appspotmail.com
>Fixes: 5b67d4397682 ("fs/buffer: use sleeping version of __find_get_block()")
>
>For information about bisection process see: https://goo.gl/tpsmEJ#bisection
>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
