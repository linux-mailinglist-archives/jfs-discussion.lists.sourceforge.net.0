Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DAD7611DD2
	for <lists+jfs-discussion@lfdr.de>; Sat, 29 Oct 2022 00:57:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ooYHP-0004ju-2U;
	Fri, 28 Oct 2022 22:56:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1ooYHO-0004jo-GB
 for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 22:56:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rQVwlOrzjvZiwM1yWaKuSc9d6GkFqbVluxP+1zRoo5U=; b=SJ30rI/7Quu+nTCaLW5xoM+T77
 M8eqVmek7WqRdh+UNinzZvrSSWTtR+Suq3l3G7/gL7NHT1AJ/H8/Dx9ZjI4JdJWb2wHMEXtByJSJe
 rfjA5Hi+cJuVcK49LWUpefmpDBn5CQXUr3CahrYdVE5FqIowvVODF4OyK/afzE6PTR1U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rQVwlOrzjvZiwM1yWaKuSc9d6GkFqbVluxP+1zRoo5U=; b=b0pm52mnuR+u3KGnYk+ZA0Px/l
 kTOxGDi/JzzSGvUgJzdzabB1fphEEaOVQKqZJawdQA9CAtJFTeMpEU8bAZO6fphuhzbngjmdXxbbO
 hLnp907bwA6p0gQiR3toJmTDKmJN/GnAylDUvAYZjhE3zy6xszdHpvRUIZBKFFPfJ+YA=;
Received: from mail-pl1-f177.google.com ([209.85.214.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ooYHM-00082Y-Nn for jfs-discussion@lists.sourceforge.net;
 Fri, 28 Oct 2022 22:56:46 +0000
Received: by mail-pl1-f177.google.com with SMTP id f23so6057959plr.6
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 28 Oct 2022 15:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=rQVwlOrzjvZiwM1yWaKuSc9d6GkFqbVluxP+1zRoo5U=;
 b=eU8VLE4GEjE+APWuWM6WRrEfDSltFZWeZlSXHgeGp5TncgAyuPYWq7hMBq0IfiTrC8
 DZVXxlLkRH6qA+M+RNmZYXcvXR46nDJ18CyPAht469DmLhfezSz3AJYGBA0IaOqn+csV
 2eVii3ad+U/qMLpjwXtpwdBEaGNoJ9vWoTF2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=rQVwlOrzjvZiwM1yWaKuSc9d6GkFqbVluxP+1zRoo5U=;
 b=j6HztiSj/SnKNt/nyN83DxJO+t5SGiy2vrOfzlb/cWIzJ9w3ZNnyvxY8p8GE19MVae
 p/KKjR+6W16rxLA+nNspBB6cygqkB1v92FgZ6DWraBV2o424n9/nDBNyjQnnFsJ2oQlI
 pcLbCYnSo4d4sN/E+F5eCNEhY6ScIgiVETS2BK4ns24F88flH715Fuaf9ziC5WEhLOBJ
 UvWCgbxeRNU+seRvfTuFihM4k2tMhZRAdDP5v3HFVVoBPSQRe2NOODr7HhipM4HWDtl0
 7gDQRkOvTCZlhg/vY1bAeo0n9HGV7/HratrdEbyLr5cIT+gWDRzLDXxZ1USd3BAqf1ly
 TeyA==
X-Gm-Message-State: ACrzQf0PA2OU/09XqSwyDkg6H5IGL3xq3jzjnL4FfMFX5IUXS2zg8E3V
 S7ypUmMh4Oj31cghX/mJqxfL4g==
X-Google-Smtp-Source: AMsMyM71FiYjLx0f78sa5ClLCKOCsteQvvfwYpKRsKxw8Q9/oGoGzeAAt58B/ZtFZEwdoblo2PGEqg==
X-Received: by 2002:a17:90b:1804:b0:213:1a9c:5ae with SMTP id
 lw4-20020a17090b180400b002131a9c05aemr19031610pjb.81.1666997799152; 
 Fri, 28 Oct 2022 15:56:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 f130-20020a623888000000b0056c06d583fasm3289439pfa.219.2022.10.28.15.56.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 28 Oct 2022 15:56:38 -0700 (PDT)
Date: Fri, 28 Oct 2022 15:56:37 -0700
From: Kees Cook <keescook@chromium.org>
To: "Dr. David Alan Gilbert" <linux@treblig.org>
Message-ID: <202210281526.B32C79C4@keescook>
References: <20221022203913.264855-1-linux@treblig.org>
 <202210241021.6E9E1EF65@keescook> <Y1beLWto/J2W1Stu@gallifrey>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y1beLWto/J2W1Stu@gallifrey>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Oct 24, 2022 at 07:49:17PM +0100,
 Dr. David Alan Gilbert
 wrote: > * Kees Cook (keescook@chromium.org) wrote: > > On Sat, Oct 22, 2022
 at 09:39:14PM +0100, linux@treblig.org wrote: > > > From: [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.214.177 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.214.177 listed in list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ooYHM-00082Y-Nn
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

On Mon, Oct 24, 2022 at 07:49:17PM +0100, Dr. David Alan Gilbert wrote:
> * Kees Cook (keescook@chromium.org) wrote:
> > On Sat, Oct 22, 2022 at 09:39:14PM +0100, linux@treblig.org wrote:
> > > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > > 
> > > JFS has in jfs_incore.h:
> > > 
> > >       /* _inline may overflow into _inline_ea when needed */
> > >       /* _inline_ea may overlay the last part of
> > >        * file._xtroot if maxentry = XTROOTINITSLOT
> > >        */
> > >       union {
> > >         struct {
> > >           /* 128: inline symlink */
> > >           unchar _inline[128];
> > >           /* 128: inline extended attr */
> > >           unchar _inline_ea[128];
> > >         };
> > >         unchar _inline_all[256];
> > > 
> > > and currently the symlink code copies into _inline;
> > > if this is larger than 128 bytes it triggers a fortify warning of the
> > > form:
> > > 
> > >   memcpy: detected field-spanning write (size 132) of single field
> > >      "ip->i_link" at fs/jfs/namei.c:950 (size 18446744073709551615)
> > 
> > Which compiler are you using for this build?
> 
> I think that report was the same on gcc on Fedora 37 and whatever
> syzkaller was running.
> 
> > This size report (SIZE_MAX)
> > should be impossible to reach. But also, the size is just wrong --
> > i_inline is 128 bytes, not SIZE_MAX. So, the detection is working
> > (132 > 128), but the report is broken, and I can't see how...
> 
> Yeh, and led me down a blind alley for a while thinking something had
> really managed to screwup the strlen somehow.

This looks like a GCC bug (going at least back to GCC 10.2)[1], but some
extra care around the macro appears to make it go away, so the reporting
variable doesn't get confused/re-evaluated:

diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
index 09a032f6ce6b..9e2d96993c30 100644
--- a/include/linux/fortify-string.h
+++ b/include/linux/fortify-string.h
@@ -550,13 +550,18 @@ __FORTIFY_INLINE bool fortify_memcpy_chk(__kernel_size_t size,
 
 #define __fortify_memcpy_chk(p, q, size, p_size, q_size,		\
 			     p_size_field, q_size_field, op) ({		\
-	size_t __fortify_size = (size_t)(size);				\
-	WARN_ONCE(fortify_memcpy_chk(__fortify_size, p_size, q_size,	\
-				     p_size_field, q_size_field, #op),	\
+	const size_t __fortify_size = (size_t)(size);			\
+	const size_t __p_size = (p_size);				\
+	const size_t __q_size = (q_size);				\
+	const size_t __p_size_field = (p_size_field);			\
+	const size_t __q_size_field = (q_size_field);			\
+	WARN_ONCE(fortify_memcpy_chk(__fortify_size, __p_size,		\
+				     __q_size, __p_size_field,		\
+				     __q_size_field, #op),		\
 		  #op ": detected field-spanning write (size %zu) of single %s (size %zu)\n", \
 		  __fortify_size,					\
 		  "field \"" #p "\" at " __FILE__ ":" __stringify(__LINE__), \
-		  p_size_field);					\
+		  __p_size_field);					\
 	__underlying_##op(p, q, __fortify_size);			\
 })
 


[1] https://syzkaller.appspot.com/bug?id=23d613df5259b977dac1696bec77f61a85890e3d

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
