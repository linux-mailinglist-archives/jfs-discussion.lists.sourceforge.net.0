Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F520A9CEE5
	for <lists+jfs-discussion@lfdr.de>; Fri, 25 Apr 2025 18:53:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u8MIZ-0008F3-Vm;
	Fri, 25 Apr 2025 16:53:11 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <richard120310@gmail.com>) id 1u8MIY-0008Ew-JH
 for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 16:53:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xUo8ldcQnt9oMg4WgBNcdcluURoGZZ9nuZ9OpdGRZpI=; b=ZTUlKWXtLG9MLrYsj3CzvP7n7+
 xEQEt6fzXNn8ZtUC0vsI2+1cApjfenaKbIjQd9q/S6xrACfOiTaezyKRXazE1ivh9m6xJdy17pPEb
 mhRmivdecehrEsPvPAnHLyfGpMNkMTJKdQzHgPqF45YZDCBGAaHxePU+lQI1RCX4NkqI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xUo8ldcQnt9oMg4WgBNcdcluURoGZZ9nuZ9OpdGRZpI=; b=me6NB2bYseeAndCN5bNeOMZbyU
 +xcqy0BaOYWHDSd32yZlnb6FMLTqWYhxkul0XQSG0Cvt87ULYTelE8cRAg1XwQRXrw67xfmckpOyD
 mHbIOXWqcRAavBVZBADJq5X0NppIPVkihsEXHnsHgMNi+D3SxfvIFF6s60WZw/gmr9c4=;
Received: from mail-pg1-f182.google.com ([209.85.215.182])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u8MIH-0005Q1-SI for jfs-discussion@lists.sourceforge.net;
 Fri, 25 Apr 2025 16:53:09 +0000
Received: by mail-pg1-f182.google.com with SMTP id
 41be03b00d2f7-b061a775ac3so2443734a12.0
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 25 Apr 2025 09:52:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1745599968; x=1746204768; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=xUo8ldcQnt9oMg4WgBNcdcluURoGZZ9nuZ9OpdGRZpI=;
 b=OjQRgc50xYAsUI5iUe7dQ9HkSsM4inGmUd/dUir+Agqm3cW3q/4wMUp8A/JTb6LWRf
 VXtmcw1BmLMOObRSW5mtpazT0ApNHrkH0Lz4DkASzQ2CovFsBWNeTE4+QWdsRQdsuiTF
 E/8zFediFcG1JS6hHNaPn7eIHElN4vtj8h3Qw6qLgYw7muGaA2eUVKoT2Lpy0f3ehJKy
 0GDS3Lhph1ERMfV1tRDagc0/EQQhiPK/882GOOu7i90WlxRwVKgKyK0Pv2CbBWTw5vBo
 hKaeSYYYiaophrAQ6wnOCrFs5XaRRDOFUGI4gt6QONsTGNFDeLlXd952WvZYpAFciU6k
 L98g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1745599968; x=1746204768;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=xUo8ldcQnt9oMg4WgBNcdcluURoGZZ9nuZ9OpdGRZpI=;
 b=ICVAlFbXUBqYId5+wcn0XQSTjmjSUur4eJtxk0/CL9UsHkzhNZoDlGTeSOPtRUIcek
 biPURixAMbHWb3lvQ4Z37g6H5i1j7HNMcYZk4kqVrhrniTx90xXXP3TFuoTd3S/vGdUk
 qTuusxKwvF+HUI6Vtox10Z+bOTJIAfHlbt1VH1R1YnCC2Aeg2DCw+j9tbLRxRssYJQMr
 YTYi7rFbrp8gz5LTFxvUQ7Y0mJoWSBJUzNZFH0vVvOk0YN12Jg4fAqzE6+a59/79tYPi
 2O0j39L1Jqdowg422/QLUZVk013EzYsv226JgKNNmmntZ7U5bOkAHakKPRZU/b2VQK4o
 tKWQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUTSYc0J9owm3O1ypFkhYl4wYV9w9wwsCODpbYGJEdxYe83XzmZu23zzegVP6WYmZV2GLbrGAjdfsfcmafeIQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yz2BacXyEu0dMlAZSGuCSnxJ75yuBPDLV9KDpe/CghgtNieTk21
 ieXqSmSKWa4MCnNIIscDvWwCnQA+hwTePWkpPEp65DrG9NQ4L2PLAa0JDA6I
X-Gm-Gg: ASbGncu77mth9DvOuMI271FB9yibsBFTD5gr8iWCswU3F+cdFtyfsMg6TN0lrIHNADX
 yDbB53sarK1gwhhsVNlzZtgJOtYz6bkLlo4eqeqOk0X8qj9L+edGVRSwhcFb4k+ObSfNFThbhM+
 UvgP1pOomXSDqZs/svWc51iMHEjdukvbTQ52d81NE7G6iNP1D5+NBkdJaUJZs8XBpDRnlrOgeRh
 4OYsTp1NbQYUZRer6P9QVptIziRT1zg01rFGG+Q0D+WTEu8tvEOCPubujfwHAoPEcHVfo+lZF2n
 zoB5S5iwWPz6HKAwxQziYigLfoOSF0BTCOC1PW49jZfXRHAxWlsFgsHSF66cZXfe0MT3
X-Google-Smtp-Source: AGHT+IFojj7f+se3pSr/WR6LUWCeOvjNpR7dRU6l5UkaIDRsEoeOc1uUIphwPcBM8pHGM0feoLQTuw==
X-Received: by 2002:a05:6a20:6f0a:b0:1fe:90c5:7cee with SMTP id
 adf61e73a8af0-2045b98fd7emr4718790637.28.1745599968077; 
 Fri, 25 Apr 2025 09:52:48 -0700 (PDT)
Received: from vaxr-BM6660-BM6360 ([2001:288:7001:2703:f97d:cfa2:241e:84aa])
 by smtp.gmail.com with ESMTPSA id
 d2e1a72fcca58-73e25a6a30csm3387276b3a.88.2025.04.25.09.52.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Apr 2025 09:52:47 -0700 (PDT)
Date: Sat, 26 Apr 2025 00:52:42 +0800
To: Jan Kara <jack@suse.cz>
Message-ID: <aAu92k-iPbnWBKGz@vaxr-BM6660-BM6360>
References: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
 <20250423023703.632613-1-richard120310@gmail.com>
 <nfnwvcefhvm5sfrvlqqf4zcdq2iyzk4f2n366ux3bjatj7o4vl@5hq5evovwsxp>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nfnwvcefhvm5sfrvlqqf4zcdq2iyzk4f2n366ux3bjatj7o4vl@5hq5evovwsxp>
X-Spam-Score: 0.1 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Apr 23, 2025 at 12:13:29PM +0200, Jan Kara wrote:
 > On Wed 23-04-25 10:37:03, I Hsin Cheng wrote: > > When the folio doesn't
 have any buffers, "folio_buffers(folio)" will > > return NULL, caus [...]
 Content analysis details:   (0.1 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.182 listed in sa-trusted.bondedsender.org]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.215.182 listed in bl.score.senderscore.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [richard120310[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [richard120310[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.182 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.182 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1u8MIH-0005Q1-SI
Subject: Re: [Jfs-discussion] [RFC PATCH] fs/buffer: Handle non folio buffer
 case for drop_buffer()
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
From: I Hsin Cheng via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: I Hsin Cheng <richard120310@gmail.com>
Cc: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com, shaggy@kernel.org,
 brauner@kernel.org, syzkaller-bugs@googlegroups.com,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 viro@zeniv.linux.org.uk, skhan@linuxfoundation.org,
 linux-fsdevel@vger.kernel.org, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Apr 23, 2025 at 12:13:29PM +0200, Jan Kara wrote:
> On Wed 23-04-25 10:37:03, I Hsin Cheng wrote:
> > When the folio doesn't have any buffers, "folio_buffers(folio)" will
> > return NULL, causing "buffer_busy(bh)" to dereference a null pointer.
> > Handle the case and jump to detach the folio if there's no buffer within
> > it.
> > 
> > Reported-by: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com
> > Closes: https://syzkaller.appspot.com/bug?extid=de1498ff3a934ac5e8b4
> > Fixes: 6439476311a64 ("fs: Convert drop_buffers() to use a folio")
> > Signed-off-by: I Hsin Cheng <richard120310@gmail.com>
> > ---
> > syzbot reported a null pointer dereference issue. [1]
> > 
> > If the folio be sent into "drop_buffer()" doesn't have any buffers,
> > assigning "bh = head" will make "bh" to NULL, and the following
> > operation of cleaning the buffer will encounter null pointer
> > dereference.
> > 
> > I checked other use cases of "folio_buffers()", e.g. the one used in
> > "buffer_check_dirty_writeback()" [2]. They generally use the same
> > approach to check whether a folio_buffers() return NULL.
> > 
> > I'm not sure whether it's normal for a non-buffer folio to reach inside
> > "drop_buffers()", if it's not maybe we have to dig more into the problem
> > and find out where did the buffers of folio get freed or corrupted, let
> > me know if that's needed and what can I test to help. I'm new to fs
> > correct me if I'm wrong I'll be happy to learn, and know more about
> > what's the expected behavior or correct behavior for a folio, thanks !
> 
> Thanks for the patch but try_to_free_buffers() is not expected to be called
> when there are no buffers. Seeing the stacktrace below, it is unexpected it
> got called because filemap_release_folio() calls folio_needs_release()
> which should make sure there are indeed buffers attached.
>

I see, it doesn't make sense to have no buffers inside
try_to_free_buffers() then, I'll dig into it more and send v2.

> Can you print more about the folio where this happened? In particular it
> would be interesting what's in folio->flags, folio->mapping->flags and
> folio->mapping->aops (resolved to a symbol). Because either the mapping has
> AS_RELEASE_ALWAYS set but then we should have ->releasepage handler, or
> have PG_Private bit set without buffers attached to a page but then again
> either ->releasepage should be set or there's some bug in fs/buffer.c which
> can set PG_Private without attaching buffers (I don't see where that could
> be).
> 

Hmm so I suppose when there're buffers attached, the PG_Private bit
should always be set in folio->flags or folio->mapping->flags or
folio->mapping->aops ?

Thanks for your patience and detailed reviewed again, I'll refer back to
you ASAP.

Best regards,
I Hsin Cheng

> 								Honza
> 
> > 
> > [1]:
> > BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
> > BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
> > BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2881 [inline]
> > BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x710 fs/buffer.c:2893
> > Read of size 4 at addr 0000000000000060 by task kswapd0/74
> > 
> > CPU: 0 UID: 0 PID: 74 Comm: kswapd0 Not tainted 6.12.0-rc1-syzkaller-00031-ge32cde8d2bd7 #0
> > Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
> > Call Trace:
> >  <TASK>
> >  __dump_stack lib/dump_stack.c:94 [inline]
> >  dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
> >  print_report+0xe8/0x550 mm/kasan/report.c:491
> >  kasan_report+0x143/0x180 mm/kasan/report.c:601
> >  kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
> >  instrument_atomic_read include/linux/instrumented.h:68 [inline]
> >  atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
> >  buffer_busy fs/buffer.c:2881 [inline]
> >  drop_buffers+0x6f/0x710 fs/buffer.c:2893
> >  try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2947
> >  shrink_folio_list+0x240c/0x8cc0 mm/vmscan.c:1432
> >  evict_folios+0x549b/0x7b50 mm/vmscan.c:4583
> >  try_to_shrink_lruvec+0x9ab/0xbb0 mm/vmscan.c:4778
> >  shrink_one+0x3b9/0x850 mm/vmscan.c:4816
> >  shrink_many mm/vmscan.c:4879 [inline]
> >  lru_gen_shrink_node mm/vmscan.c:4957 [inline]
> >  shrink_node+0x3799/0x3de0 mm/vmscan.c:5937
> >  kswapd_shrink_node mm/vmscan.c:6765 [inline]
> >  balance_pgdat mm/vmscan.c:6957 [inline]
> >  kswapd+0x1ca3/0x3700 mm/vmscan.c:7226
> >  kthread+0x2f0/0x390 kernel/kthread.c:389
> >  ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
> >  ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
> >  </TASK>
> > 
> > [2]:https://elixir.bootlin.com/linux/v6.14.3/source/fs/buffer.c#L97
> > 
> > Best regards,
> > I Hsin Cheng
> > ---
> >  fs/buffer.c | 3 +++
> >  1 file changed, 3 insertions(+)
> > 
> > diff --git a/fs/buffer.c b/fs/buffer.c
> > index cc8452f60251..29fd17f78265 100644
> > --- a/fs/buffer.c
> > +++ b/fs/buffer.c
> > @@ -2883,6 +2883,8 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
> >  	struct buffer_head *head = folio_buffers(folio);
> >  	struct buffer_head *bh;
> >  
> > +	if (!head)
> > +		goto detach_folio;
> >  	bh = head;
> >  	do {
> >  		if (buffer_busy(bh))
> > @@ -2897,6 +2899,7 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
> >  			__remove_assoc_queue(bh);
> >  		bh = next;
> >  	} while (bh != head);
> > +detach_folio:
> >  	*buffers_to_free = head;
> >  	folio_detach_private(folio);
> >  	return true;
> > -- 
> > 2.43.0
> > 
> -- 
> Jan Kara <jack@suse.com>
> SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
