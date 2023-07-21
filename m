Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6E675F9E0
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Jul 2023 16:28:59 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qNwYC-00019h-LG;
	Mon, 24 Jul 2023 14:28:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <pc@manguebit.com>) id 1qMxbS-0001L3-A1
 for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 21:23:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:MIME-Version:Date:References:
 In-Reply-To:Subject:Cc:To:From:Message-ID:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ars6Nadl+Rq72SQtLyiG6lEUopWtkDVGWzEjqH+jejY=; b=eIs4198WKJ6dvxLgpqNcuixYnG
 z4Z7Aogk8lEvTZmaaeN/Y/2hkMkehoDbkIr119yl+aOg8UZ+NiTEkdgf3DIU2hYBCe7U5UWtbGhQA
 E5of7yA4oO1zUqAR59Wr1J8UZBzrNDwv2YaweLkD/Rv5QFnG2ltlLmbP3F/Fw7hl/BWY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:MIME-Version:Date:References:In-Reply-To:Subject:Cc:To:From:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ars6Nadl+Rq72SQtLyiG6lEUopWtkDVGWzEjqH+jejY=; b=UN4T+oIWi7DahtxRF3YFg+9Kf3
 daexZEUxVhkJsP/NxM/wOVyR2SrnK4C3oZCWY1OUB+ShK9vzVq/kNnDoGOH91bHaM2AfRF1IQWax9
 oD+TDTi/I9rPZ2KBDV6oeUprZ9YC1Bbvycq3lfpCMcUQTih4Nveh1Wi+pa/ckez5nePs=;
Received: from mx.manguebit.com ([167.235.159.17])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qMxbO-00FlQk-FY for jfs-discussion@lists.sourceforge.net;
 Fri, 21 Jul 2023 21:23:59 +0000
Message-ID: <16f50dff126af9b20f9b99ca056ad5fa.pc@manguebit.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manguebit.com;
 s=dkim; t=1689973622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ars6Nadl+Rq72SQtLyiG6lEUopWtkDVGWzEjqH+jejY=;
 b=ADoRMfMcbu8+X2h3U7J4997/p9+vqLswDqPhf2a+PGTFdCtmbZc2Q8jqQVki+JagLpPHDe
 g8TqkMNKBy0UPHn50m1WhcDkSci00k/s2RAC7wLT1hnoc19PR+f0wPZfzFBQL0HrIHTkf2
 dO/as5liQpjWkf2vwnONWS791yTw6KHGQc8299Pb5w9h44RXihKeylXvE+lmJlXGaAYRRf
 WUl/GOKlmJUzyoiOUxyjQ0f0t+uQhtI+BoSQvYaYtKZ5n9wmEEmwzR7CVi/aQxPz/Tw7Gg
 EarBL0T2mTztxVY/7AG6nrK2BSZsnVLE3FcOk6F+w6hZtrTLfvNDGu6Zoqi8pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=manguebit.com; 
 s=dkim; t=1689973622;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=ars6Nadl+Rq72SQtLyiG6lEUopWtkDVGWzEjqH+jejY=;
 b=UGw1/OSnt32RLUbzsBlm6WHBa7mWkdwOAAuAGeJ0tgKfkLAvhzjvCEFOE5zuhtrB9WVp2k
 gEnZ+4DkP2825BWfbMTsZMSv5QZDJNvsWxGTsDIZke6hun1T+pMKoYSgP/LAuI9ro5UzH2
 n+JgpSKH/ppPVSlmsMMGUkBlsvuGRMvKjRL06x3l0ccs46MAazFXbulPL1oxx+HNVouVXI
 HCUAtnckK4s/Ovbr7tai97JhClAJFNYyiNoNk3sAuUo0BnWDGcqOsRwQimZzH+kq73Ee+O
 P9CyFDw02MoSC7A4nEkVSspJBzfqqrx0D4PWiv1JHHrmwLseWAtIre8WBBhrzQ==
ARC-Authentication-Results: i=1; ORIGINATING;
 auth=pass smtp.auth=pc@manguebit.com smtp.mailfrom=pc@manguebit.com
ARC-Seal: i=1; s=dkim; d=manguebit.com; t=1689973622; a=rsa-sha256; cv=none;
 b=aP3GaJpVhWlhKwR6OAA13BSZJskvHTtKei9fXcW3KOgBaA5SADqy74UYdQnA80rA+p3N3S
 2+UUDA6O6wEgnTWq4N6vkCGLdPnwnG+cO8AF9GIoUCm3lixxrVjT8pj52wcrVBMTFmv+/b
 lYJ+l7J/6GHQxBc89shCss95CY/ACfW3lpomxHWLYIkRWb7PefTMs5qhyDLqwdoNMX4MCb
 jDPtEinkHyA9mBt8k+PNKQHeQmgo8o5jwZh5usE6c67mlEp/KWTGUY2e3McOvR862Pk+he
 V46niyzRFBrQLwiZeZABh30+icHkb6oapAZclIPC0p0B8uMgzuwatLXxcP2nGQ==
To: "Dr. David Alan Gilbert" <linux@treblig.org>, Tom Talpey <tom@talpey.com>
In-Reply-To: <ZLrxYzGXJzsLmGDs@gallifrey>
References: <20230628232417.120844-1-linux@treblig.org>
 <ZK80mu/YbHLEABAB@gallifrey>
 <CAH2r5mvrhr52hXFv87O9O=Qw45AXRXr0NQAsTk4Wj-6s19-2bA@mail.gmail.com>
 <CAH2r5mss4RsEF1b6gJo8LFWsN9-YBSEP6GV7axsNhX7ihj5CqA@mail.gmail.com>
 <ZLhchajZaWEVM6D7@gallifrey>
 <79bbb44c-f3b1-5c5c-1ad4-bcaab0069666@oracle.com>
 <d1f7fbe9-8fe2-e3e3-d6ff-1544204202ff@talpey.com>
 <ZLnJzUynpTBvZGtA@gallifrey>
 <f8f4a2c5-05d3-0b2d-688f-b3274a98fc73@talpey.com>
 <ZLrxYzGXJzsLmGDs@gallifrey>
Date: Fri, 21 Jul 2023 18:06:57 -0300
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: "Dr. David Alan Gilbert" <linux@treblig.org> writes: >
 https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/checkpatch.pl#n3737
 > if ($realfile =~ /\.(h|s|S)$/) { > $comment = '/*'; > } elsif ($realfile
 =~ /\.(c|rs|dts|dtsi)$/ [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
X-Headers-End: 1qMxbO-00FlQk-FY
X-Mailman-Approved-At: Mon, 24 Jul 2023 14:28:40 +0000
Subject: Re: [Jfs-discussion] [PATCH v2 0/4] dedupe smb unicode files
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
From: Paulo Alcantara via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Paulo Alcantara <pc@manguebit.com>
Cc: linux-cifs@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 shaggy@kernel.org, linux-kernel@vger.kernel.org,
 Steve French <smfrench@gmail.com>, krisman@collabora.com,
 linkinjeon@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

"Dr. David Alan Gilbert" <linux@treblig.org> writes:

> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/scripts/checkpatch.pl#n3737
> 	if ($realfile =~ /\.(h|s|S)$/) {
> 		$comment = '/*';
> 	} elsif ($realfile =~ /\.(c|rs|dts|dtsi)$/) {
> 		$comment = '//';
>
> I don't get where that idea came from.

Check Documentation/process/license-rules.rst.


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
