Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 71D007227A6
	for <lists+jfs-discussion@lfdr.de>; Mon,  5 Jun 2023 15:41:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q6ARm-000274-4n;
	Mon, 05 Jun 2023 13:40:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david.laight@aculab.com>) id 1q6ARe-00026x-6O
 for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 13:40:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=3qk243sJXswITquaZx28iDacsy4iG3SVHsJVN8upQtM=; b=I03/08jfwV/6rEFDkvaUv/PoUf
 XOFHjOpYCJmYhVW046Q51KlCuq7NkuGOVJlSrwrQ0wV7yB2KFXMFOH3nQBS8VCvF19Izx7zNVW7Ec
 9mnQLyUbvBXfu/NYqjDV8VoB46H2nHqUiEwOl6RLB96a5x2u1aKPPWd+Iyab+GumgETI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=3qk243sJXswITquaZx28iDacsy4iG3SVHsJVN8upQtM=; b=Nq712DG/TuSheSVko/XMVbMaEH
 zHYsPgRJY4uvHh2Zs2kz6Am3wYELlCXUjCSeCmldDQ/EFBzEUxeYm85gFa+q+7xnjlsYiAgctovaE
 wcxGNA5vjBdnTGn2aa4M0kSX6uyskMD23uZ1fYNDNcZ+Lqi2vLgoTImBYjHhIoYqPUQU=;
Received: from eu-smtp-delivery-151.mimecast.com ([185.58.85.151])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q6ARU-0004xu-4O for jfs-discussion@lists.sourceforge.net;
 Mon, 05 Jun 2023 13:40:23 +0000
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) by
 relay.mimecast.com with ESMTP with both STARTTLS and AUTH (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 uk-mta-2-O5Y6mELAM7an8ptyuTEDNw-1; Mon, 05 Jun 2023 14:24:19 +0100
X-MC-Unique: O5Y6mELAM7an8ptyuTEDNw-1
Received: from AcuMS.Aculab.com (10.202.163.4) by AcuMS.aculab.com
 (10.202.163.4) with Microsoft SMTP Server (TLS) id 15.0.1497.48; Mon, 5 Jun
 2023 14:24:07 +0100
Received: from AcuMS.Aculab.com ([::1]) by AcuMS.aculab.com ([::1]) with mapi
 id 15.00.1497.048; Mon, 5 Jun 2023 14:24:07 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Kees Cook' <keescook@chromium.org>, "Dr. David Alan Gilbert"
 <linux@treblig.org>
Thread-Topic: [PATCH] jfs: Use unsigned variable for length calculations
Thread-Index: AQHZlKngOBVLl6H9ZkS0fkY79qOf5698NwmA
Date: Mon, 5 Jun 2023 13:24:07 +0000
Message-ID: <a84cfb004c5f43589129d70b9b39c2b2@AcuMS.aculab.com>
References: <20230204183355.never.877-kees@kernel.org>
 <Y96/SUlPUl7xH1NO@gallifrey> <63e1486a.050a0220.7001.ca15@mx.google.com>
 <Y+FaEp2blurmgVlH@gallifrey> <202306010954.23972A710A@keescook>
In-Reply-To: <202306010954.23972A710A@keescook>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  From: Kees Cook > Sent: 01 June 2023 17:55 > > On Mon, Feb
 06, 2023 at 07:50:42PM +0000, Dr. David Alan Gilbert wrote: > > * Kees Cook
 (keescook@chromium.org) wrote: > > > On Sat, Feb 04, 2023 at 08:2 [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.58.85.151 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.58.85.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q6ARU-0004xu-4O
Subject: Re: [Jfs-discussion] [PATCH] jfs: Use unsigned variable for length
 calculations
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 "jfs-discussion@lists.sourceforge.net"
 <jfs-discussion@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
 Dave Chinner <dchinner@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

From: Kees Cook
> Sent: 01 June 2023 17:55
> 
> On Mon, Feb 06, 2023 at 07:50:42PM +0000, Dr. David Alan Gilbert wrote:
> > * Kees Cook (keescook@chromium.org) wrote:
> > > On Sat, Feb 04, 2023 at 08:25:45PM +0000, Dr. David Alan Gilbert wrote:
...
> > > > > -	int ssize;		/* source pathname size */
> > > > > +	u32 ssize;		/* source pathname size */
> > > >
> > > > Had you considered using size_t - this is set from a strlen and used by a memcpy
> > > > that both talk size_t.
> > >
> > > I considered that, but I've had other maintainers upset about doubling
> > > the variable size.
> >
> > I bet at least on some platforms it's cheaper as the 64 bit.
> >
> > > I opted to keep the variable 32-bit here, so the
> > > machine code would only change to lose signed-ness.

On x86-64 'unsigned int' and 'signed long' are likely to
generate the best code.

If you use 'signed int' it will to have to be sign extended
if used in a 64-bit expression (eg as an array index).

(That is probably true of most 64bit arch.)

OTOH 'unsigned long' always requires a REX prefix - making the
code that bit larger.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
