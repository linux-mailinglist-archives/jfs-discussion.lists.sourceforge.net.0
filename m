Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C5DBCA9874E
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Apr 2025 12:29:31 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1u7XLW-0001bQ-WE;
	Wed, 23 Apr 2025 10:28:51 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jack@suse.cz>) id 1u7XL2-0001av-Kw
 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 10:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=; b=bShNUwAiNjwh9J+0KNoYFCQWwT
 Jh+a+UOvWRLv3CKuHXm2aFGqTcQrG0bbBLEulDiHG+A6gJ75V8EgnYfQR4oX0tVwJ/jVnnC1zwcFB
 lyA8M6RHSF4UfeIhOTOHQHneD4NcQM+IxN4AX7q/YQOCqd0WhZezsN8i1vENXzsNwRVQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=; b=O7BcNX3sOuWD78eXUilipPvH1/
 JfLjQa0hFF/aG8MVTNqXRs0w+YjzIJSRrZvS70vMqvl9gdCjNhatUCreOT9hKsNQYwqfP/xFVLjrm
 YCtH46Hf1FWeeNPWRbR32hLFTBHHnKQW7nAa0H61Jhy+EiDWS1UK836qp6+e1TQ1CCAY=;
Received: from smtp-out1.suse.de ([195.135.223.130])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1u7XKm-0000nH-T8 for jfs-discussion@lists.sourceforge.net;
 Wed, 23 Apr 2025 10:28:21 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by smtp-out1.suse.de (Postfix) with ESMTPS id D94AD211AA;
 Wed, 23 Apr 2025 10:13:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1745403210; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=;
 b=Y2hEvVj42VjicWlUgFh98GXAAJsnxiM2snQGVgvz7sf7Otq2HbXhjH4DGW0N92oHbArHZs
 bdL00+oxOlRlLxmd2P92+4Me5X/FmPVkrTY2QJ4APxlxsMBhpZv/kzGP5VfVJSSAi7YdvM
 x65BtD5SJlWLa7N4Cd4+HhOSbqzgJQo=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1745403210;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=;
 b=Vs5Q0MW24G6eSoJcE2y8nAT7lkgpCsCQnGJsIR0Pkk5Y6CsIEAh/bbieG7+njCjxLfVscW
 sbJv9rps3DIO6KAg==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
 t=1745403209; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=;
 b=xax/DTfgSPtKw5GBvjVrkgg4ci0UyH1hHpAR9g27efwzTAqGIWLlgerra/YQERQ60CI7UF
 Min8JAtK6iFCJnBP1m6OrUNTvdv7Mi4aEPCGvqa3w+7jgRsJuiEjuk8fn9+d+LieI6xY+t
 qCu15PXn7ZwL6E/d4SGDlQg1PTopXH4=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
 s=susede2_ed25519; t=1745403209;
 h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
 mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=scvC0nxHQsvb9LvLM+uRWu+/QPrlkFfGmi7eUya2g+g=;
 b=swnaPlWmLUUTEvpw1Ky8mjNvt1hx0ltWKiP7zXNI1rYUmaftkIrB6swzp/NjCpehMH8ZTF
 qZB7b8nVReRkI7Ag==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
 (No client certificate requested)
 by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id C65AE13691;
 Wed, 23 Apr 2025 10:13:29 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
 by imap1.dmz-prg2.suse.org with ESMTPSA id 2fAmMEm9CGgWGwAAD6G6ig
 (envelope-from <jack@suse.cz>); Wed, 23 Apr 2025 10:13:29 +0000
Received: by quack3.suse.cz (Postfix, from userid 1000)
 id 863C6A07A7; Wed, 23 Apr 2025 12:13:29 +0200 (CEST)
Date: Wed, 23 Apr 2025 12:13:29 +0200
From: Jan Kara <jack@suse.cz>
To: I Hsin Cheng <richard120310@gmail.com>
Message-ID: <nfnwvcefhvm5sfrvlqqf4zcdq2iyzk4f2n366ux3bjatj7o4vl@5hq5evovwsxp>
References: <66fcb7f9.050a0220.f28ec.04e8.GAE@google.com>
 <20250423023703.632613-1-richard120310@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250423023703.632613-1-richard120310@gmail.com>
X-Spam-Level: 
X-Spamd-Result: default: False [-2.30 / 50.00]; BAYES_HAM(-3.00)[100.00%];
 SUSPICIOUS_RECIPS(1.50)[]; NEURAL_HAM_LONG(-1.00)[-1.000];
 MID_RHS_NOT_FQDN(0.50)[]; NEURAL_HAM_SHORT(-0.20)[-0.996];
 MIME_GOOD(-0.10)[text/plain];
 DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
 RCVD_COUNT_THREE(0.00)[3]; FREEMAIL_TO(0.00)[gmail.com];
 ARC_NA(0.00)[]; FUZZY_BLOCKED(0.00)[rspamd.com];
 RCPT_COUNT_TWELVE(0.00)[12]; MIME_TRACE(0.00)[0:+];
 FREEMAIL_ENVRCPT(0.00)[gmail.com];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TO_DN_SOME(0.00)[];
 FROM_EQ_ENVFROM(0.00)[]; FROM_HAS_DN(0.00)[];
 RCVD_TLS_LAST(0.00)[]; TAGGED_RCPT(0.00)[de1498ff3a934ac5e8b4];
 MISSING_XM_UA(0.00)[]; RCVD_VIA_SMTP_AUTH(0.00)[];
 DBL_BLOCKED_OPENRESOLVER(0.00)[bootlin.com:url,suse.com:email]
X-Spam-Score: -2.30
X-Spam-Flag: NO
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed 23-04-25 10:37:03,
 I Hsin Cheng wrote: > When the folio
 doesn't have any buffers, "folio_buffers(folio)" will > return NULL, causing
 "buffer_busy(bh)" to dereference a null pointer. > Handle th [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_SAFE_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [195.135.223.130 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.223.130 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-Headers-End: 1u7XKm-0000nH-T8
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
Cc: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com, shaggy@kernel.org,
 brauner@kernel.org, jack@suse.cz, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org, viro@zeniv.linux.org.uk,
 skhan@linuxfoundation.org, linux-fsdevel@vger.kernel.org,
 jfs-discussion@lists.sourceforge.net, linux-kernel-mentees@lists.linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed 23-04-25 10:37:03, I Hsin Cheng wrote:
> When the folio doesn't have any buffers, "folio_buffers(folio)" will
> return NULL, causing "buffer_busy(bh)" to dereference a null pointer.
> Handle the case and jump to detach the folio if there's no buffer within
> it.
> 
> Reported-by: syzbot+de1498ff3a934ac5e8b4@syzkaller.appspotmail.com
> Closes: https://syzkaller.appspot.com/bug?extid=de1498ff3a934ac5e8b4
> Fixes: 6439476311a64 ("fs: Convert drop_buffers() to use a folio")
> Signed-off-by: I Hsin Cheng <richard120310@gmail.com>
> ---
> syzbot reported a null pointer dereference issue. [1]
> 
> If the folio be sent into "drop_buffer()" doesn't have any buffers,
> assigning "bh = head" will make "bh" to NULL, and the following
> operation of cleaning the buffer will encounter null pointer
> dereference.
> 
> I checked other use cases of "folio_buffers()", e.g. the one used in
> "buffer_check_dirty_writeback()" [2]. They generally use the same
> approach to check whether a folio_buffers() return NULL.
> 
> I'm not sure whether it's normal for a non-buffer folio to reach inside
> "drop_buffers()", if it's not maybe we have to dig more into the problem
> and find out where did the buffers of folio get freed or corrupted, let
> me know if that's needed and what can I test to help. I'm new to fs
> correct me if I'm wrong I'll be happy to learn, and know more about
> what's the expected behavior or correct behavior for a folio, thanks !

Thanks for the patch but try_to_free_buffers() is not expected to be called
when there are no buffers. Seeing the stacktrace below, it is unexpected it
got called because filemap_release_folio() calls folio_needs_release()
which should make sure there are indeed buffers attached.

Can you print more about the folio where this happened? In particular it
would be interesting what's in folio->flags, folio->mapping->flags and
folio->mapping->aops (resolved to a symbol). Because either the mapping has
AS_RELEASE_ALWAYS set but then we should have ->releasepage handler, or
have PG_Private bit set without buffers attached to a page but then again
either ->releasepage should be set or there's some bug in fs/buffer.c which
can set PG_Private without attaching buffers (I don't see where that could
be).

								Honza

> 
> [1]:
> BUG: KASAN: null-ptr-deref in instrument_atomic_read include/linux/instrumented.h:68 [inline]
> BUG: KASAN: null-ptr-deref in atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
> BUG: KASAN: null-ptr-deref in buffer_busy fs/buffer.c:2881 [inline]
> BUG: KASAN: null-ptr-deref in drop_buffers+0x6f/0x710 fs/buffer.c:2893
> Read of size 4 at addr 0000000000000060 by task kswapd0/74
> 
> CPU: 0 UID: 0 PID: 74 Comm: kswapd0 Not tainted 6.12.0-rc1-syzkaller-00031-ge32cde8d2bd7 #0
> Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 1.16.3-debian-1.16.3-2~bpo12+1 04/01/2014
> Call Trace:
>  <TASK>
>  __dump_stack lib/dump_stack.c:94 [inline]
>  dump_stack_lvl+0x241/0x360 lib/dump_stack.c:120
>  print_report+0xe8/0x550 mm/kasan/report.c:491
>  kasan_report+0x143/0x180 mm/kasan/report.c:601
>  kasan_check_range+0x282/0x290 mm/kasan/generic.c:189
>  instrument_atomic_read include/linux/instrumented.h:68 [inline]
>  atomic_read include/linux/atomic/atomic-instrumented.h:32 [inline]
>  buffer_busy fs/buffer.c:2881 [inline]
>  drop_buffers+0x6f/0x710 fs/buffer.c:2893
>  try_to_free_buffers+0x295/0x5f0 fs/buffer.c:2947
>  shrink_folio_list+0x240c/0x8cc0 mm/vmscan.c:1432
>  evict_folios+0x549b/0x7b50 mm/vmscan.c:4583
>  try_to_shrink_lruvec+0x9ab/0xbb0 mm/vmscan.c:4778
>  shrink_one+0x3b9/0x850 mm/vmscan.c:4816
>  shrink_many mm/vmscan.c:4879 [inline]
>  lru_gen_shrink_node mm/vmscan.c:4957 [inline]
>  shrink_node+0x3799/0x3de0 mm/vmscan.c:5937
>  kswapd_shrink_node mm/vmscan.c:6765 [inline]
>  balance_pgdat mm/vmscan.c:6957 [inline]
>  kswapd+0x1ca3/0x3700 mm/vmscan.c:7226
>  kthread+0x2f0/0x390 kernel/kthread.c:389
>  ret_from_fork+0x4b/0x80 arch/x86/kernel/process.c:147
>  ret_from_fork_asm+0x1a/0x30 arch/x86/entry/entry_64.S:244
>  </TASK>
> 
> [2]:https://elixir.bootlin.com/linux/v6.14.3/source/fs/buffer.c#L97
> 
> Best regards,
> I Hsin Cheng
> ---
>  fs/buffer.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/fs/buffer.c b/fs/buffer.c
> index cc8452f60251..29fd17f78265 100644
> --- a/fs/buffer.c
> +++ b/fs/buffer.c
> @@ -2883,6 +2883,8 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
>  	struct buffer_head *head = folio_buffers(folio);
>  	struct buffer_head *bh;
>  
> +	if (!head)
> +		goto detach_folio;
>  	bh = head;
>  	do {
>  		if (buffer_busy(bh))
> @@ -2897,6 +2899,7 @@ drop_buffers(struct folio *folio, struct buffer_head **buffers_to_free)
>  			__remove_assoc_queue(bh);
>  		bh = next;
>  	} while (bh != head);
> +detach_folio:
>  	*buffers_to_free = head;
>  	folio_detach_private(folio);
>  	return true;
> -- 
> 2.43.0
> 
-- 
Jan Kara <jack@suse.com>
SUSE Labs, CR


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
