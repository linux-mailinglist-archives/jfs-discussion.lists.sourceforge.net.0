Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 471E261547B
	for <lists+jfs-discussion@lfdr.de>; Tue,  1 Nov 2022 22:57:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1opzGI-00041G-N3;
	Tue, 01 Nov 2022 21:57:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1opzGH-00041A-U3
 for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 21:57:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IHsWXQ49lddtj26zGFMc9IeJUhtq7xWwaZJ/MCojYX8=; b=EzqAJLqjU9Dk0ihh8Ty7TF+Vtk
 t+8pV7ITuAmYXP6Lgr+1L/q8NqltfqEhgdMT3minIYSCgYfNonVOb+pB5z4GlouVoBzBjEi+i7cdJ
 /lqw1OhHf5u8yCF+cTQ/sOm3Yernwii+18nqWL15QArxR9eaT6fajdKDd4qVVkb6kkTM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IHsWXQ49lddtj26zGFMc9IeJUhtq7xWwaZJ/MCojYX8=; b=VXt2gQfW88Zu9Sj4EhgnmTHSEm
 C3oyqdIhM3s3MninvZdgJ/7zKbt/HziRg2KBLuREIaetgDYn0ckMJqYCBJpJ2TH4nc5ZM1y9+Hy7D
 IzNs8HTtn2cbSfAxlqO24T3b3LnHzw7ZQBJb0LOowx9unJS/tWYolbBGu6z4RcCOlZqU=;
Received: from mail-pj1-f54.google.com ([209.85.216.54])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1opzG8-008fVq-Uo for jfs-discussion@lists.sourceforge.net;
 Tue, 01 Nov 2022 21:57:33 +0000
Received: by mail-pj1-f54.google.com with SMTP id
 b1-20020a17090a7ac100b00213fde52d49so218665pjl.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 01 Nov 2022 14:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=IHsWXQ49lddtj26zGFMc9IeJUhtq7xWwaZJ/MCojYX8=;
 b=K89JQH8oIioWEZWTcsH3xMptW613Ahz9m/s1j2ziS7uaCmmQJWvT6yOgjljh+WPC1Q
 QVubGByb0ISay5Djv+DYsLVZ9OanmBDrEZ2oo0sFOB1GXUnhHt9IQmtKWfcGoORJWsIQ
 mmbq8VC/EaIVpySyczVvu9cGJaEIGdvB1aUSY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=IHsWXQ49lddtj26zGFMc9IeJUhtq7xWwaZJ/MCojYX8=;
 b=4OZkfZdV41nrLAn5jaeImm3WNvGOjOgfkkLrI+r5o+ZsYJwEXefbWD9SdEHx4cqHIh
 Isc8UT4BLFudzvRAv+jPGkZHXrHa1SZvYss5oGjkvr0sSpE6uiv4UNnd7Flg4I6GEt8q
 OpphP60Fzqd6o0i1rcjS/k/fy5c+e5atCCMI0HkBNk8h7bxJka5YK9Xo77dF0z904viS
 ZE+BDieGvIWdLG1AGoLIVWFOddkXh/U27hvAzC1o0FSSg4k7dzIdS3UIPDRXvCXUiczN
 RLnBz+vp+K/BShXgrbhog8hFm7W17gyyakrb/ajbRc5b6RLjYRmDnAbB51lM7Lzh5+vX
 WwUA==
X-Gm-Message-State: ACrzQf193qdIm1YGQnXcW/d0wNwcXYP/oQrHE4djRSYf/xC1kQ2LD+Hl
 5YME4QD0mFRQ7IyOHX7Ze9/Y6A==
X-Google-Smtp-Source: AMsMyM5kJ4jjmnBy9Y7rFPCgzA5dY/0CFB4OzDmPzwVetJE3f5UU8d75DlyTrzC31QtKCVuv1AbKKw==
X-Received: by 2002:a17:90a:2a8b:b0:213:9ae5:b9ab with SMTP id
 j11-20020a17090a2a8b00b002139ae5b9abmr22489555pjd.110.1667339839417; 
 Tue, 01 Nov 2022 14:57:19 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 q8-20020a170902dac800b0017854cee6ebsm6866474plx.72.2022.11.01.14.57.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Nov 2022 14:57:19 -0700 (PDT)
Date: Tue, 1 Nov 2022 14:57:18 -0700
From: Kees Cook <keescook@chromium.org>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
Message-ID: <202211011456.6B73479@keescook>
References: <20221022203913.264855-1-linux@treblig.org>
 <202210241021.6E9E1EF65@keescook> <Y1beLWto/J2W1Stu@gallifrey>
 <202210281526.B32C79C4@keescook> <Y10hBcMrAYPZzghw@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y10hBcMrAYPZzghw@gallifrey>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 29, 2022 at 01:48:05PM +0100,
 Dr. David Alan Gilbert
 wrote: > * Kees Cook (keescook@chromium.org) wrote: > > This looks like a
 GCC bug (going at least back to GCC 10.2)[1], but some > > ex [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.54 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1opzG8-008fVq-Uo
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix fortify moan in symlink
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Sat, Oct 29, 2022 at 01:48:05PM +0100, Dr. David Alan Gilbert wrote:
> * Kees Cook (keescook@chromium.org) wrote:
> > This looks like a GCC bug (going at least back to GCC 10.2)[1], but some
> > extra care around the macro appears to make it go away, so the reporting
> > variable doesn't get confused/re-evaluated:
> 
> Thanks for chasing that; are you also going to file a gcc bug?

No, I haven't had the time to minimize a PoC, so I'm not sure it would
make a very good bug report.

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
