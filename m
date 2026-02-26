Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YFPHJcHAn2lOdgQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 04:40:49 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B380F1A0A29
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 04:40:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ff0s4KHl9SI2gBem6ceRquTMAEQu1IQ2FgvYMrJSP8Q=; b=b2HXIBl/qk1eJsCdOPrWtHyV+s
	h6o9qXce648Djh5v61NarnwL+Z1Fq6b3t2VkWNmPZeVfZagK55ycMyGvpCJ2hbtIbsWjGhMTZWb8w
	RANc4dWc5W5bRy2si0RsK/Lc6NUrgFAoYEgNhhiGYDDowNP/ot1TvErmXEWcMCjWLvbA=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvSEi-00036j-WD;
	Thu, 26 Feb 2026 03:40:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1vvSEg-00036b-Re
 for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 03:40:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=2aeYTgjykkTytqAP0zVL+KvrFyKRcfVgTb0o5/+caF4=; b=DdcS9Xi+gOdW+4PgaxI3/k/Cxc
 S5xKfruOLUWdyes91ktq9eNvKi0osnidULX4Sx8aNTUsh6D9NMA1yCPWBjnB+92f041Cr8QwmtDWQ
 siFp9NEmjIn+TluBmDcKyXpGpo5T3ffQ/nMQ7KEUPukJWZAXSDsS/uu9z3lGQ2C2XMTs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=2aeYTgjykkTytqAP0zVL+KvrFyKRcfVgTb0o5/+caF4=; b=S18dggh4SyhTFHxI9WFs3JpiID
 ItxawafxGN2mpTdflE7ZPMJUJ6crry2rKMOKO7Bt6besthBH/CTVwfNK4bm57g1FrMt37zefEgexH
 PXKBj+MUc5NEwlLjENncOloiuU8RMrUyrFJ/DFLDTZjJxtHiJg7NJAiMSlS2gbrF+iNg=;
Received: from mail-dy1-f172.google.com ([74.125.82.172])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvSEg-0008H6-4P for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 03:40:22 +0000
Received: by mail-dy1-f172.google.com with SMTP id
 5a478bee46e88-2bdb17511aaso723104eec.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 19:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1772077216; x=1772682016;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=2aeYTgjykkTytqAP0zVL+KvrFyKRcfVgTb0o5/+caF4=;
 b=avkDL4n/OtMdGBqG3qyyzJ3q70hMAq8ihB4ffwdYCFhOqKLo802HW6KoguvBPrqS4b
 kYoW1UXSfCr5PDZKvxxYUundTkoaa+NgWL134/0nkcceQRgJOdnsu96fwYA1LujTmONm
 v9/J3p35jh80OosxBWnpNfbdQFCBB7DDytX4bFUVJOp3VajWKSlo/VXtHUVEUJ+Cr2yj
 ZgryF0W/Ol4y3THz15A91zqV93r+wbjHQ35ANVvH2g65seEmRiq3fA6IMFX0TQLzmPbd
 LLRxMt4y+UBdDOMME3jKfC/XuzQtGMSX9ibKJkYScQ8F4IjpxadivkiXYOwUqtIeifyF
 gzAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772077216; x=1772682016;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=2aeYTgjykkTytqAP0zVL+KvrFyKRcfVgTb0o5/+caF4=;
 b=sNsYRLmSXUtjjymvqK1ERpigjI7SRlnDWq0e4HC07ENJHLbkh8PrHRjWlWFso1AQkw
 /6gd0w7sLSvqZYfl7UmsBhKtHU75Py0CbFCzveX/9+WwC8trnJm5L73BzKNsZHNvdlfT
 sqokSVkQJ+H6AW3O4+qED7nVtqB5ocH7QQqZNjUr0IXC/j4aNZ22aGjFiklGg3BZMJrj
 LiBlnqOYm91SsQVuE5aRmL8KJiVv037tFglEvkoMekgICwsKCn7T2q8WxElN0g50bwn/
 SoAW6TURRQYiWYv8I1XCng3EDRMXhjJaMABHeun9AqEarcq6K3eZWOYw87eAVvYtwjWK
 PYWg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVv2MmODiERraPO/z3YB7SxgwFUQzB7jji1ti2QHOOiuCNJ/sL3A3DItb6dcb4V+HKhOPaHI8oGghwkOciWBg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyaKNnmB2ogW0tkj5zEexulweAujasUtpv4M092Ivj/BlTD1PtI
 cTRpVyfrVDlh0aoedfo4Hzw/V7UXPsa6MoqucV+RQsLBohKo2uoC6pxr/1v0kDkM7mJySWlseDR
 F65jZQMQ=
X-Gm-Gg: ATEYQzwceBFrH/VFVfbADkRnUpfjDBhYcZhx0I6RKBSTEwnvzU0JxNU8lYz2BNhfnvz
 0a6k8Z8YOTlAoDmW1vJcIN9bT0YhBcK2BYOOP+XVVuCRqK9EFO/ZTuD16F3BH5QSCZCxiPepqST
 fklFJzG1xznj9zM9Q0FthYd6+vwErlGJpiq4aDoag3ZGiUWNhbh3JtXXkmObeNlf+sC+nTCfQVe
 IxhQBsMhPaD4j+wPFxReAoI4lHE824oVGoZKCqCPN5tpw2q9XoMv0GucCfxMRtwTNMDfok2i4yG
 f5aMyxavt5L+T303eIEzJZMCdHaah+/lVK/AZhHKhI0CxbynuZ11Rve3t/invD8U8HEsD8Zd9GJ
 cDRWCHriBwyF9+r0o+UHVWH4UXhYarlEIQZGclcGJrA63WQtqwZV/rNvmfqCZHQABd4jtI4y/gf
 YCPjJ3opRJFeHHqand2K5NOldtu4RoskrOBf7TyXgYTb5WQCwPrjtCvHneCbHgZAiGl43c4N4tv
 sIxoUksLg==
X-Received: by 2002:a05:6808:4fd4:b0:45e:dbda:add6 with SMTP id
 5614622812f47-464463e38fbmr8708984b6e.57.1772075473379; 
 Wed, 25 Feb 2026 19:11:13 -0800 (PST)
Received: from [192.168.1.150] ([198.8.77.157])
 by smtp.gmail.com with ESMTPSA id
 5614622812f47-4644a1f6333sm10281996b6e.19.2026.02.25.19.11.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Feb 2026 19:11:12 -0800 (PST)
Message-ID: <2e919e7b-1e75-4e57-b6f1-cdf3da4c0424@kernel.dk>
Date: Wed, 25 Feb 2026 20:11:04 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Tal Zussman <tz2294@columbia.edu>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
 <CAKha_srSdS46FM8K-RKaiinP0y6kx_MhxnHjZ0KKP1NOAL+STA@mail.gmail.com>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <CAKha_srSdS46FM8K-RKaiinP0y6kx_MhxnHjZ0KKP1NOAL+STA@mail.gmail.com>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/25/26 6:38 PM, Tal Zussman wrote: > On Wed, Feb 25, 2026
 at 5:52?PM Jens Axboe <axboe@kernel.dk> wrote: >> On 2/25/26 3:40 PM, Tal
 Zussman wrote: >>> folio_end_dropbehind() is called from folio_e [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.172 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vvSEg-0008H6-4P
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, Yuezhang Mo <yuezhang.mo@sony.com>,
 Bob Copeland <me@bobcopeland.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org,
 "Matthew Wilcox \(Oracle\)" <willy@infradead.org>, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>, ntfs3@lists.linux.dev,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tz2294@columbia.edu,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:jack@suse.cz,m:yuezhang.mo@sony.com,m:me@bobcopeland.com,m:almaz.alexandrovich@paragon-software.com,m:linux-mm@kvack.org,m:linux-nilfs@vger.kernel.org,m:willy@infradead.org,m:linux-ext4@vger.kernel.org,m:linkinjeon@kernel.org,m:linux-block@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:konishi.ryusuke@gmail.com,m:brauner@kernel.org,m:sj1557.seo@samsung.com,m:linux-kernel@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:ntfs3@lists.linux.dev,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[kernel.dk];
	FORGED_SENDER(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[23];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel-dk.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,infradead.org,zeniv.linux.org.uk,gmail.com,samsung.com,linux-foundation.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel-dk.20230601.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-0.954];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kernel.dk:mid,kernel.dk:email,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,columbia.edu:email]
X-Rspamd-Queue-Id: B380F1A0A29
X-Rspamd-Action: no action

On 2/25/26 6:38 PM, Tal Zussman wrote:
> On Wed, Feb 25, 2026 at 5:52?PM Jens Axboe <axboe@kernel.dk> wrote:
>> On 2/25/26 3:40 PM, Tal Zussman wrote:
>>> folio_end_dropbehind() is called from folio_end_writeback(), which can
>>> run in IRQ context through buffer_head completion.
>>>
>>> Previously, when folio_end_dropbehind() detected !in_task(), it skipped
>>> the invalidation entirely. This meant that folios marked for dropbehind
>>> via RWF_DONTCACHE would remain in the page cache after writeback when
>>> completed from IRQ context, defeating the purpose of using it.
>>>
>>> Fix this by deferring the dropbehind invalidation to a work item.  When
>>> folio_end_dropbehind() is called from IRQ context, the folio is added to
>>> a global folio_batch and the work item is scheduled. The worker drains
>>> the batch, locking each folio and calling filemap_end_dropbehind(), and
>>> re-drains if new folios arrived while processing.
>>>
>>> This unblocks enabling RWF_UNCACHED for block devices and other
>>> buffer_head-based I/O.
>>>
>>> Signed-off-by: Tal Zussman <tz2294@columbia.edu>
>>> ---
>>>  mm/filemap.c | 84 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++----
>>>  1 file changed, 79 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/mm/filemap.c b/mm/filemap.c
>>> index ebd75684cb0a..6263f35c5d13 100644
>>> --- a/mm/filemap.c
>>> +++ b/mm/filemap.c
>>> @@ -1085,6 +1085,8 @@ static const struct ctl_table filemap_sysctl_table[] = {
>>>   }
>>>  };
>>>
>>> +static void __init dropbehind_init(void);
>>> +
>>>  void __init pagecache_init(void)
>>>  {
>>>   int i;
>>> @@ -1092,6 +1094,7 @@ void __init pagecache_init(void)
>>>   for (i = 0; i < PAGE_WAIT_TABLE_SIZE; i++)
>>>   init_waitqueue_head(&folio_wait_table[i]);
>>>
>>> + dropbehind_init();
>>>   page_writeback_init();
>>>   register_sysctl_init("vm", filemap_sysctl_table);
>>>  }
>>> @@ -1613,23 +1616,94 @@ static void filemap_end_dropbehind(struct folio *folio)
>>>   * If folio was marked as dropbehind, then pages should be dropped when writeback
>>>   * completes. Do that now. If we fail, it's likely because of a big folio -
>>>   * just reset dropbehind for that case and latter completions should invalidate.
>>> + *
>>> + * When called from IRQ context (e.g. buffer_head completion), we cannot lock
>>> + * the folio and invalidate. Defer to a workqueue so that callers like
>>> + * end_buffer_async_write() that complete in IRQ context still get their folios
>>> + * pruned.
>>>   */
>>> +static DEFINE_SPINLOCK(dropbehind_lock);
>>> +static struct folio_batch dropbehind_fbatch;
>>> +static struct work_struct dropbehind_work;
>>> +
>>> +static void dropbehind_work_fn(struct work_struct *w)
>>> +{
>>> + struct folio_batch fbatch;
>>> +
>>> +again:
>>> + spin_lock_irq(&dropbehind_lock);
>>> + fbatch = dropbehind_fbatch;
>>> + folio_batch_reinit(&dropbehind_fbatch);
>>> + spin_unlock_irq(&dropbehind_lock);
>>> +
>>> + for (int i = 0; i < folio_batch_count(&fbatch); i++) {
>>> + struct folio *folio = fbatch.folios[i];
>>> +
>>> + if (folio_trylock(folio)) {
>>> + filemap_end_dropbehind(folio);
>>> + folio_unlock(folio);
>>> + }
>>> + folio_put(folio);
>>> + }
>>> +
>>> + /* Drain folios that were added while we were processing. */
>>> + spin_lock_irq(&dropbehind_lock);
>>> + if (folio_batch_count(&dropbehind_fbatch)) {
>>> + spin_unlock_irq(&dropbehind_lock);
>>> + goto again;
>>> + }
>>> + spin_unlock_irq(&dropbehind_lock);
>>> +}
>>> +
>>> +static void __init dropbehind_init(void)
>>> +{
>>> + folio_batch_init(&dropbehind_fbatch);
>>> + INIT_WORK(&dropbehind_work, dropbehind_work_fn);
>>> +}
>>> +
>>> +static void folio_end_dropbehind_irq(struct folio *folio)
>>> +{
>>> + unsigned long flags;
>>> +
>>> + spin_lock_irqsave(&dropbehind_lock, flags);
>>> +
>>> + /* If there is no space in the folio_batch, skip the invalidation. */
>>> + if (!folio_batch_space(&dropbehind_fbatch)) {
>>> + spin_unlock_irqrestore(&dropbehind_lock, flags);
>>> + return;
>>> + }
>>> +
>>> + folio_get(folio);
>>> + folio_batch_add(&dropbehind_fbatch, folio);
>>> + spin_unlock_irqrestore(&dropbehind_lock, flags);
>>> +
>>> + schedule_work(&dropbehind_work);
>>> +}
>>
>> How well does this scale? I did a patch basically the same as this, but
>> not using a folio batch though. But the main sticking point was
>> dropbehind_lock contention, to the point where I left it alone and
>> thought "ok maybe we just do this when we're done with the awful
>> buffer_head stuff". What happens if you have N threads doing IO at the
>> same time to N block devices? I suspect it'll look absolutely terrible,
>> as each thread will be banging on that dropbehind_lock.
>>
>> One solution could potentially be to use per-cpu lists for this. If you
>> have N threads working on separate block devices, they will tend to be
>> sticky to their CPU anyway.
>>
>> tldr - I don't believe the above will work well enough to scale
>> appropriately.
>>
>> Let me know if you want me to test this on my big box, it's got a bunch
>> of drives and CPUs to match.
>>
>> I did a patch exactly matching this, youc an probably find it
> 
> Yep, that makes sense. I think a per-cpu folio_batch, spinlock, and
> work_struct would solve this (assuming that's what you meant by
> per-cpu lists) and would be simple enough to implement. I can put that
> together and send it tomorrow. I'll see if I can find your patch too.

Was just looking for my patch as well... I don't think I ever posted it,
because I didn't like it very much. It's probably sitting in my git tree
somewhere.

But it looks very much the same as yours, modulo the folio batching.

One thing to keep in mind with per-cpu lists and then a per-cpu work
item is that you will potentially have all of them running. Hopefully
they can do that without burning too much CPU. However, might be more
useful to have one per node or something like that, provided it can keep
up, and just have that worker iterate the lists in that node. But we can
experiment with that, I'd say just do the naive version first which is
basically this patch but turned into a per-cpu collection of
lock/list/work_item.

> Any testing you can do on that version would be very appreciated! I'm
> unfortunately disk-limited for the moment...

No problem - I've got 32 drives in that box, and can hit about
230-240GB/sec of bandwidth off those drives. It'll certainly spot any
issues with scaling this and having many threads running uncached IO.

-- 
Jens Axboe


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
