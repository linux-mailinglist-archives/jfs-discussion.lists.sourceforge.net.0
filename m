Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KfAeMKqDn2mVcgQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 00:20:10 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F080119EB57
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 00:20:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S9niF8aFj/S9RYjLR1iyUzfwO0bt6ySo5GHhabC8tNc=; b=BETfB9JHVbZp6SIb8OvF0I+y2o
	+hroCIP5UkUT8BTNp6A8F3443F+NQbJ7b7IOJ5QN6aUs/86iBUS0fpwv5RDZIgVeLdlCmsBTdwh0g
	K2dyxSM3Sq8+JT/dHJ6tZmy3eBugw3ZCo+Ar0EIq5VE7cN+jUZoViaHzGRNz7Cb015Fo=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvOAE-0006Pf-Hq;
	Wed, 25 Feb 2026 23:19:30 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1vvOAC-0006PY-Qk
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 23:19:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lV5yfIvdQy795zXZiEFYEcuoFYVuQqyybCf8AopsVu4=; b=XGnrZZ3uzj8jLM8MF1F78XaYQb
 LMs4HgNDjDz0YyMzPtLN6fwU25h981/I2J22uLRu69qgQdPT23hHJoppIsOhNv968/DM78gFoSpDv
 v+PDka3wpMocQQuq3TFczpS+4Zzpvv9Q1tRI6pQTT/rQRIAEizlJl3ULx5kOhrpzRtFk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lV5yfIvdQy795zXZiEFYEcuoFYVuQqyybCf8AopsVu4=; b=Y7A1qodPYDBzvrx8FYxgVJEPzP
 s/qr/3QyBUZlF1UGkqYBe62EXh26mZHOfnrlir8cWG6QXTwemsVDCbGtVOYyb2QTDASYkjkSEBrmH
 /z1uKN4aO/NkMFAIA3Un97ZvrZc7nVoIteku9bFwOULMdj3ThpJdgmnwfcgoVRa9LMlY=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvOAB-0008HR-5T for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 23:19:28 +0000
Received: by mail-qt1-f170.google.com with SMTP id
 d75a77b69052e-506c02ec1b3so3200971cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 15:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1772061556; x=1772666356;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=lV5yfIvdQy795zXZiEFYEcuoFYVuQqyybCf8AopsVu4=;
 b=xmVUSpiqwqrYteddrAV7CmcJXIptEZUhRCsLSt5r101NeAjty01gPebqRi6WigIl6G
 yGbmYDwx1OqNRvEfLWuDWXCs8dw5A9VZ6NUQI4Zy5hL7jxNv2+RJWvo74K05Sdc8YD2k
 /L5HiCznadGdJRH7qqceb3C6hyvJMhFuaVcPO8h7I5krevF0DbBJX6ukPXwj+n2qQoMJ
 VtqMBwb7DB0APtNAca1/JLVK+NaMsbtQtgRj3+hrWWBXkZlpl+H7tbPcoor5hgZSQZWH
 L54Xax7J/cCM+SCqEn324hGfQS2QHHB0z4o/xCI3YkcvbtlJ8jYvHdn6rC/5GQowbj5b
 Tg3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772061556; x=1772666356;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=lV5yfIvdQy795zXZiEFYEcuoFYVuQqyybCf8AopsVu4=;
 b=uAaBHjkY25AHKxCl9mMFfAZYHtiL1zh4zQW/RH1pADxUZswm3lLI8hDiZ1z2ID6FFG
 7aaYlKvBga9n1Pjw4jxP8cH4AZJoBdNtAYNjNIkgquFNfrYsdSd3Axl/qOWhG8LYCBYs
 /tWueg3WvJXyhdbhiSVnfOsNuErl6S5UObCeSZtvw7mQy+69Kq09YY9z9tn8Ewh+KTi2
 DaQjN2m9S5qTWYM4l8ALkQgupia1UmwRjZuzgKK+G6FWQSjT9xv+OUqJsW8nWN846/Up
 RKNp4nueF3AJGEtpvTI7ketL/GJq/rqMMwbWgq0uh099fAgYWD1CT+k0V1nhwGRkym3c
 er5g==
X-Forwarded-Encrypted: i=1;
 AJvYcCXqqdPF3CKyzuYa9BtxecHlbq8yBuSqVXVUh/+2T/PB86RucCDcfBfxfxJNYxzCvMOJ7Tc8bOw2cXg9aeSmLg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzcoUFc2dpW66i8i7FxYBF5rhvO7hWDlo/Ao25Rsm2j/mUgAlqP
 zrM9oiGBep1FNJ7U9rWGd5Mg7tQJaLP8dNDwEG8OrOII9QEnaoBKNKAbNkDn6SLfp/HiU231+T2
 JEiOj6yo=
X-Gm-Gg: ATEYQzwx2yacLpVyTT9UHR1vXKl4zu4TiipcFpDczS4DvQqCjgALPmLajqSn/bu63F0
 or+BiRkrNrOAAI2jd0FIwlKb3jSAZ1IWorOBG9+ekps5LiUoJyTfZ/ttiX9VrN4M19+2+1/toSM
 NOtLOSxU1rIaQ+KB6FlzQyCzXThyy8C1qQu6wy5gi+8HyksHXFQH3sjXabJnK+6hZcFB3o7TTQj
 vIlyFH0paRbcYvUQXCP05eg4cACBiy5e+p84zEnd5PeauL8jfIt4KbFyKB3v3UFctXJNuiUZymL
 v9QPl09km54W7tYV6oOAN5EEoFjAcVROzexBGnH+eS7/VjqPBHJKZnyoBj7XIp/mEgK/1gmTnEz
 cj5I9cz0DKG2j0MrTxNDwTId3U6O+rQoNc2G69CZyEbOcP1deVESe0ObfdW4+nAX3IymUyf+q92
 0xseI7VmLq/CrayABjyilATx25FBxLcT5PO7n1q+LuvFjAXgl3Pz2Wxub5CF61wlOJ2+fRD1ztQ
 xnVpcS+
X-Received: by 2002:a05:620a:2807:b0:8cb:2b1f:99e4 with SMTP id
 af79cd13be357-8cbbf3cf398mr113515285a.34.1772059964616; 
 Wed, 25 Feb 2026 14:52:44 -0800 (PST)
Received: from [192.168.1.102] ([96.43.243.2])
 by smtp.gmail.com with ESMTPSA id
 af79cd13be357-8cbbf652bb6sm51863585a.4.2026.02.25.14.52.42
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Feb 2026 14:52:44 -0800 (PST)
Message-ID: <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
Date: Wed, 25 Feb 2026 15:52:41 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tal Zussman <tz2294@columbia.edu>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Yuezhang Mo <yuezhang.mo@sony.com>, Dave Kleikamp <shaggy@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Bob Copeland <me@bobcopeland.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/25/26 3:40 PM,
 Tal Zussman wrote: > folio_end_dropbehind()
 is called from folio_end_writeback(), which can > run in IRQ context through
 buffer_head completion. > > Previously, when folio_end_drop [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vvOAB-0008HR-5T
Subject: Re: [Jfs-discussion] [PATCH RFC v2 1/2] filemap: defer dropbehind
 invalidation from IRQ context
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel-dk.20230601.gappssmtp.com:s=20230601];
	FORGED_RECIPIENTS(0.00)[m:tz2294@columbia.edu,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:willy@infradead.org,m:akpm@linux-foundation.org,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[kernel.dk];
	FREEMAIL_TO(0.00)[columbia.edu,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com,infradead.org,linux-foundation.org];
	MIME_TRACE(0.00)[0:+];
	DKIM_MIXED(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel-dk.20230601.gappssmtp.com:-];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	RCPT_COUNT_TWELVE(0.00)[24];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	TO_DN_SOME(0.00)[]
X-Rspamd-Queue-Id: F080119EB57
X-Rspamd-Action: no action

On 2/25/26 3:40 PM, Tal Zussman wrote:
> folio_end_dropbehind() is called from folio_end_writeback(), which can
> run in IRQ context through buffer_head completion.
> 
> Previously, when folio_end_dropbehind() detected !in_task(), it skipped
> the invalidation entirely. This meant that folios marked for dropbehind
> via RWF_DONTCACHE would remain in the page cache after writeback when
> completed from IRQ context, defeating the purpose of using it.
> 
> Fix this by deferring the dropbehind invalidation to a work item.  When
> folio_end_dropbehind() is called from IRQ context, the folio is added to
> a global folio_batch and the work item is scheduled. The worker drains
> the batch, locking each folio and calling filemap_end_dropbehind(), and
> re-drains if new folios arrived while processing.
> 
> This unblocks enabling RWF_UNCACHED for block devices and other
> buffer_head-based I/O.
> 
> Signed-off-by: Tal Zussman <tz2294@columbia.edu>
> ---
>  mm/filemap.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
>  1 file changed, 79 insertions(+), 5 deletions(-)
> 
> diff --git a/mm/filemap.c b/mm/filemap.c
> index ebd75684cb0a..6263f35c5d13 100644
> --- a/mm/filemap.c
> +++ b/mm/filemap.c
> @@ -1085,6 +1085,8 @@ static const struct ctl_table filemap_sysctl_table[] = {
>  	}
>  };
>  
> +static void __init dropbehind_init(void);
> +
>  void __init pagecache_init(void)
>  {
>  	int i;
> @@ -1092,6 +1094,7 @@ void __init pagecache_init(void)
>  	for (i = 0; i < PAGE_WAIT_TABLE_SIZE; i++)
>  		init_waitqueue_head(&folio_wait_table[i]);
>  
> +	dropbehind_init();
>  	page_writeback_init();
>  	register_sysctl_init("vm", filemap_sysctl_table);
>  }
> @@ -1613,23 +1616,94 @@ static void filemap_end_dropbehind(struct folio *folio)
>   * If folio was marked as dropbehind, then pages should be dropped when writeback
>   * completes. Do that now. If we fail, it's likely because of a big folio -
>   * just reset dropbehind for that case and latter completions should invalidate.
> + *
> + * When called from IRQ context (e.g. buffer_head completion), we cannot lock
> + * the folio and invalidate. Defer to a workqueue so that callers like
> + * end_buffer_async_write() that complete in IRQ context still get their folios
> + * pruned.
>   */
> +static DEFINE_SPINLOCK(dropbehind_lock);
> +static struct folio_batch dropbehind_fbatch;
> +static struct work_struct dropbehind_work;
> +
> +static void dropbehind_work_fn(struct work_struct *w)
> +{
> +	struct folio_batch fbatch;
> +
> +again:
> +	spin_lock_irq(&dropbehind_lock);
> +	fbatch = dropbehind_fbatch;
> +	folio_batch_reinit(&dropbehind_fbatch);
> +	spin_unlock_irq(&dropbehind_lock);
> +
> +	for (int i = 0; i < folio_batch_count(&fbatch); i++) {
> +		struct folio *folio = fbatch.folios[i];
> +
> +		if (folio_trylock(folio)) {
> +			filemap_end_dropbehind(folio);
> +			folio_unlock(folio);
> +		}
> +		folio_put(folio);
> +	}
> +
> +	/* Drain folios that were added while we were processing. */
> +	spin_lock_irq(&dropbehind_lock);
> +	if (folio_batch_count(&dropbehind_fbatch)) {
> +		spin_unlock_irq(&dropbehind_lock);
> +		goto again;
> +	}
> +	spin_unlock_irq(&dropbehind_lock);
> +}
> +
> +static void __init dropbehind_init(void)
> +{
> +	folio_batch_init(&dropbehind_fbatch);
> +	INIT_WORK(&dropbehind_work, dropbehind_work_fn);
> +}
> +
> +static void folio_end_dropbehind_irq(struct folio *folio)
> +{
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&dropbehind_lock, flags);
> +
> +	/* If there is no space in the folio_batch, skip the invalidation. */
> +	if (!folio_batch_space(&dropbehind_fbatch)) {
> +		spin_unlock_irqrestore(&dropbehind_lock, flags);
> +		return;
> +	}
> +
> +	folio_get(folio);
> +	folio_batch_add(&dropbehind_fbatch, folio);
> +	spin_unlock_irqrestore(&dropbehind_lock, flags);
> +
> +	schedule_work(&dropbehind_work);
> +}

How well does this scale? I did a patch basically the same as this, but
not using a folio batch though. But the main sticking point was
dropbehind_lock contention, to the point where I left it alone and
thought "ok maybe we just do this when we're done with the awful
buffer_head stuff". What happens if you have N threads doing IO at the
same time to N block devices? I suspect it'll look absolutely terrible,
as each thread will be banging on that dropbehind_lock.

One solution could potentially be to use per-cpu lists for this. If you
have N threads working on separate block devices, they will tend to be
sticky to their CPU anyway.

tldr - I don't believe the above will work well enough to scale
appropriately.

Let me know if you want me to test this on my big box, it's got a bunch
of drives and CPUs to match.

I did a patch exactly matching this, youc an probably find it 

>  void folio_end_dropbehind(struct folio *folio)
>  {
>  	if (!folio_test_dropbehind(folio))
>  		return;
>  
>  	/*
> -	 * Hitting !in_task() should not happen off RWF_DONTCACHE writeback,
> -	 * but can happen if normal writeback just happens to find dirty folios
> -	 * that were created as part of uncached writeback, and that writeback
> -	 * would otherwise not need non-IRQ handling. Just skip the
> -	 * invalidation in that case.
> +	 * Hitting !in_task() can happen for IO completed from IRQ contexts or
> +	 * if normal writeback just happens to find dirty folios that were
> +	 * created as part of uncached writeback, and that writeback would
> +	 * otherwise not need non-IRQ handling.
>  	 */
>  	if (in_task() && folio_trylock(folio)) {
>  		filemap_end_dropbehind(folio);
>  		folio_unlock(folio);
> +		return;
>  	}
> +
> +	/*
> +	 * In IRQ context we cannot lock the folio or call into the
> +	 * invalidation path. Defer to a workqueue. This happens for
> +	 * buffer_head-based writeback which runs from bio IRQ context.
> +	 */
> +	if (!in_task())
> +		folio_end_dropbehind_irq(folio);
>  }

Ideally we'd have the caller be responsible for this, rather than put it
inside folio_end_dropbehind().

-- 
Jens Axboe


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
