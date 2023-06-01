Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5515E71EFD3
	for <lists+jfs-discussion@lfdr.de>; Thu,  1 Jun 2023 18:56:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4laI-0001gL-Q7;
	Thu, 01 Jun 2023 16:55:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1q4la8-0001gD-Ec
 for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 16:55:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=7R//X5NdsgI6wLK3+Qn/oGuxEvWJrNQ/UPsJ5NYCxrI=; b=iT+Zc/Z+8gg3oXhAIKva9cxb2H
 XkZ+TCcpn6zqNZ4GgHpcWJkVlL5wDGtfJ30HurL6GkhHrP1T3aaSbbEa//KDj3BhOS2DK5ZaCquew
 wx4zOlTSH/k3GdtTPz9EETJUCWqx24thgxeE/HJ6lIFyO99BQeV3qWq3F7kK6E/ow5sw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=7R//X5NdsgI6wLK3+Qn/oGuxEvWJrNQ/UPsJ5NYCxrI=; b=X5qhpyQAfkxQ7b7TXn9mTUR+Ur
 RVzfYBYyXMsqMugW/4+doQ5+rN8Wzfg2JThTZxv6WjKL4XMe2LfikDc4fyiUKPuxY9bNMAVTmpKKT
 5hlHP79KVuFcpHN1lKD2A++TTm58ajD+12wf63OCHPcNBIjq2mke+QnTR5vpZAFt166c=;
Received: from mail-ot1-f44.google.com ([209.85.210.44])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4la5-008XQ1-0L for jfs-discussion@lists.sourceforge.net;
 Thu, 01 Jun 2023 16:55:24 +0000
Received: by mail-ot1-f44.google.com with SMTP id
 46e09a7af769-6b085e425ffso1042436a34.1
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 01 Jun 2023 09:55:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1685638515; x=1688230515;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=7R//X5NdsgI6wLK3+Qn/oGuxEvWJrNQ/UPsJ5NYCxrI=;
 b=N7jxBsxokIj4dbKG6CfxgzcFsr0fRqCh3i51kOL9bnVoVD7qhUPnQdT61rQLCRW9Sf
 4HqGyhdlZ6lg0JDJd8XMOiBemmXtWSiGpZ0wcSMfI4cdrK3bxXfXe2Dy1jA51fWkUfIo
 8gGyws9b00BKw41Xo6nv9fll2wH3Vr9k8IlBU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685638515; x=1688230515;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=7R//X5NdsgI6wLK3+Qn/oGuxEvWJrNQ/UPsJ5NYCxrI=;
 b=fA9yWaLM/zRk+SDcmo89O7liM6V60CArOTSBYD7I1MTGqY29x89lbGwKAKBjNSKrgz
 kT4kKN3rUa9it5JtDZK6M0ob9LO++/xMzEpw3fVoSX9aq4OL5sk+uAVsWHzaus8BtvMm
 adqDiVWGRCcjzE/FlsVoadOQ25HHBDm2Zrn/ADsFy75Z0AWiyezBFjE9OTnVds09wgBu
 nWfWa5FNsEUXPOh5FuJAnNh3HwwV3g6VjzbZBfFwDKrIHwPbyPBNIPUghIgAY9BRojlw
 QFHWd42QM08d6zISHT/qRwhwDyx20fjQkWU7WvHJG2PTaYzhCnQaNI89RTJV118C1qTM
 6WXw==
X-Gm-Message-State: AC+VfDwQNsFIhM0Byj6BD2iEh99A6+qpp4UMybhfAQMxZwM+tGI80Tzf
 OD5FLUGMZ0b2MQjlDT0dGiUXoA==
X-Google-Smtp-Source: ACHHUZ6zCvExEfmdXvt05aBdnohmfteqciUcd9dCgQeL02IZcrLpDgudgpXfQvw66OgRXUYf/54XDw==
X-Received: by 2002:a05:6358:5903:b0:123:41df:5196 with SMTP id
 g3-20020a056358590300b0012341df5196mr7098945rwf.7.1685638515289; 
 Thu, 01 Jun 2023 09:55:15 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 o1-20020a17090ab88100b0024dfbac9e2fsm1628265pjr.21.2023.06.01.09.55.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 01 Jun 2023 09:55:14 -0700 (PDT)
Date: Thu, 1 Jun 2023 09:55:14 -0700
From: Kees Cook <keescook@chromium.org>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
Message-ID: <202306010954.23972A710A@keescook>
References: <20230204183355.never.877-kees@kernel.org>
 <Y96/SUlPUl7xH1NO@gallifrey>
 <63e1486a.050a0220.7001.ca15@mx.google.com>
 <Y+FaEp2blurmgVlH@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y+FaEp2blurmgVlH@gallifrey>
X-Spam-Score: -0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Feb 06, 2023 at 07:50:42PM +0000,
 Dr. David Alan Gilbert
 wrote: > * Kees Cook (keescook@chromium.org) wrote: > > On Sat, Feb 04, 2023
 at 08:25:45PM +0000, Dr. David Alan Gilbert wrote: > > > * [...] 
 Content analysis details:   (-0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.44 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.44 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q4la5-008XQ1-0L
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
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Dave Chinner <dchinner@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Mon, Feb 06, 2023 at 07:50:42PM +0000, Dr. David Alan Gilbert wrote:
> * Kees Cook (keescook@chromium.org) wrote:
> > On Sat, Feb 04, 2023 at 08:25:45PM +0000, Dr. David Alan Gilbert wrote:
> > > * Kees Cook (keescook@chromium.org) wrote:
> > > > To avoid confusing the compiler about possible negative sizes, switch
> > > > "ssize" which can never be negative from int to u32.  Seen with GCC 13:
> > > > 
> > > > ../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
> > > > [-Warray-bounds=]
> > > >    57 | #define __underlying_memcpy     __builtin_memcpy
> > > >       |                                 ^
> > > > ...
> > > > ../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
> > > >   950 |                 memcpy(ip->i_link, name, ssize);
> > > >       |                 ^~~~~~
> > > > 
> > > > Cc: Dave Kleikamp <shaggy@kernel.org>
> > > > Cc: Christian Brauner <brauner@kernel.org>
> > > > Cc: Dave Chinner <dchinner@redhat.com>
> > > > Cc: jfs-discussion@lists.sourceforge.net
> > > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > > ---
> > > >  fs/jfs/namei.c | 6 +++---
> > > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > > 
> > > > diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> > > > index b29d68b5eec5..494b9f4043cf 100644
> > > > --- a/fs/jfs/namei.c
> > > > +++ b/fs/jfs/namei.c
> > > > @@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
> > > >  	tid_t tid;
> > > >  	ino_t ino = 0;
> > > >  	struct component_name dname;
> > > > -	int ssize;		/* source pathname size */
> > > > +	u32 ssize;		/* source pathname size */
> > > 
> > > Had you considered using size_t - this is set from a strlen and used by a memcpy
> > > that both talk size_t.
> > 
> > I considered that, but I've had other maintainers upset about doubling
> > the variable size.
> 
> I bet at least on some platforms it's cheaper as the 64 bit.
> 
> > I opted to keep the variable 32-bit here, so the
> > machine code would only change to lose signed-ness.
> 
> Fair enough.

Thread ping. Can someone pick this up (or Ack it for my tree), please?

Thanks!

-Kees

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
