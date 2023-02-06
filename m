Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7DA168C60B
	for <lists+jfs-discussion@lfdr.de>; Mon,  6 Feb 2023 19:44:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pP6T6-0007Wj-Tl;
	Mon, 06 Feb 2023 18:43:55 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1pP6T5-0007Wd-5G
 for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 18:43:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Subject:Cc:To:From:Date:Message-ID:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=00L1YIX4H8zKf3PuLUq07QOm26y5Ud4TCvFHdvWnTKQ=; b=McvWxbhdXqULrjbIW41RbsX/+w
 FhcW0AKhYjkL8yd3OmF3ZB5JOUJHe+eE/eduMwThbCnv4mvvGINlE/n/WtQJlZu3HTuUYJamYuN1z
 ELBrFUHM1E8NmHmRyHA2g/YNcLQGxsD/3v1yUQbWP54TDy9QjxBhkamrQWBiGWj/XdFE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Subject:Cc:To:From:Date:
 Message-ID:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=00L1YIX4H8zKf3PuLUq07QOm26y5Ud4TCvFHdvWnTKQ=; b=k4kGUQET9M7WCWlP5dYDaGmLV7
 m4Yb5FiYbVL8kV9J4Fbs9JH6PEciRxy/wVsQV73OEMt/dLexn0V1IyUx5NbXWfSIlo2qJnIXocS2Z
 G7x3dTC2vK0p820Ld4UHEaiE0W3oJfJeWrKOjhOc5nIxOtGmx64V7I5PchZ3CCLRi4y0=;
Received: from mail-qt1-f176.google.com ([209.85.160.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pP6T1-0007ok-3y for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 18:43:53 +0000
Received: by mail-qt1-f176.google.com with SMTP id c2so13965371qtw.5
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 06 Feb 2023 10:43:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:subject:cc
 :to:from:date:message-id:from:to:cc:subject:date:message-id:reply-to;
 bh=00L1YIX4H8zKf3PuLUq07QOm26y5Ud4TCvFHdvWnTKQ=;
 b=ikhdd2Npj6TQEvKy94NLWFo/n/aSnbPjpScVDW1c6xKVtRknrIfjkl46nx8UvIPFX6
 xV911PqOZ9ZUc6HE08ydc5yEYX02pX/ld5BzLfEWgiPjNK1mw4EnY5wXsKK8cQZ7lWpi
 4S3hvlULN0StlGnkwyNq/wBn2r8gHr3nnqOXg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:subject:cc
 :to:from:date:message-id:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=00L1YIX4H8zKf3PuLUq07QOm26y5Ud4TCvFHdvWnTKQ=;
 b=d/AEu2d0/O2NBWaNos/3gpFu7LVJb8kGRVQsNFmmWgCZvJy8cvfNweOO/b035fQE3U
 4L5hVaAwLqtPqSTfXxfrbOKMQvJIVtl77ygvXCmnMltEWEGVojbdxnRH2lMzEVI3aRwi
 6uyV/AjrtUd3yxU7tPqdS1KDeZjFG602dMwstENAZsyjZMTBtLp54cK0fB0QrOBVp4oe
 /w8iggFbnJKaopraTfF5HAFbnElhvOEVl2YGdMz+GEVeFqDpbN7d0IM9vgTpSglV6Rgg
 d8t02Fx4+ZPyiYh9AajqxzjdTrK+heMp1e8/kZpuhqa6ORMLL3zlYbfK3DXakIogwJ6X
 eLJQ==
X-Gm-Message-State: AO0yUKWRXaigqOy6zhy6PFl7f6JW/cCzuMwnolHWyI3DLZK5glRswl0E
 0GG9cBXALJp7C4rxZWj86F8qwh8w3OqM8hlV
X-Google-Smtp-Source: AK7set9WEz94AKlTh9/C9AYG20przHY2Z0FJe/l8y9IyrENZ/EkFE2DkTJi5xJd1g7WaQ1QEjgUB8Q==
X-Received: by 2002:a05:6a00:9:b0:586:a3a9:6163 with SMTP id
 h9-20020a056a00000900b00586a3a96163mr347726pfk.28.1675708522461; 
 Mon, 06 Feb 2023 10:35:22 -0800 (PST)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net.
 [198.0.35.241]) by smtp.gmail.com with ESMTPSA id
 bt22-20020a056a00439600b0056be1581126sm7712592pfb.143.2023.02.06.10.35.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Feb 2023 10:35:22 -0800 (PST)
Message-ID: <63e1486a.050a0220.7001.ca15@mx.google.com>
X-Google-Original-Message-ID: <202302061033.@keescook>
Date: Mon, 6 Feb 2023 10:35:21 -0800
From: Kees Cook <keescook@chromium.org>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
References: <20230204183355.never.877-kees@kernel.org>
 <Y96/SUlPUl7xH1NO@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y96/SUlPUl7xH1NO@gallifrey>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Feb 04, 2023 at 08:25:45PM +0000,
 Dr. David Alan Gilbert
 wrote: > * Kees Cook (keescook@chromium.org) wrote: > > To avoid confusing
 the compiler about possible negative sizes, switch > > "ssiz [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.176 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.176 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1pP6T1-0007ok-3y
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

On Sat, Feb 04, 2023 at 08:25:45PM +0000, Dr. David Alan Gilbert wrote:
> * Kees Cook (keescook@chromium.org) wrote:
> > To avoid confusing the compiler about possible negative sizes, switch
> > "ssize" which can never be negative from int to u32.  Seen with GCC 13:
> > 
> > ../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
> > [-Warray-bounds=]
> >    57 | #define __underlying_memcpy     __builtin_memcpy
> >       |                                 ^
> > ...
> > ../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
> >   950 |                 memcpy(ip->i_link, name, ssize);
> >       |                 ^~~~~~
> > 
> > Cc: Dave Kleikamp <shaggy@kernel.org>
> > Cc: Christian Brauner <brauner@kernel.org>
> > Cc: Dave Chinner <dchinner@redhat.com>
> > Cc: jfs-discussion@lists.sourceforge.net
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  fs/jfs/namei.c | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > 
> > diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> > index b29d68b5eec5..494b9f4043cf 100644
> > --- a/fs/jfs/namei.c
> > +++ b/fs/jfs/namei.c
> > @@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
> >  	tid_t tid;
> >  	ino_t ino = 0;
> >  	struct component_name dname;
> > -	int ssize;		/* source pathname size */
> > +	u32 ssize;		/* source pathname size */
> 
> Had you considered using size_t - this is set from a strlen and used by a memcpy
> that both talk size_t.

I considered that, but I've had other maintainers upset about doubling
the variable size. I opted to keep the variable 32-bit here, so the
machine code would only change to lose signed-ness.

-Kees

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
