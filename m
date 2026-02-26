Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YNqQILfAn2lOdgQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 04:40:39 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CE8D21A0A20
	for <lists+jfs-discussion@lfdr.de>; Thu, 26 Feb 2026 04:40:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NcfMY1/sFY2XPjWMBBGoP52eERmft2RhRXSODPgkpDo=; b=ZyYM2csEu9cyP7yTpg4WTpWVPC
	2n5C0zfO8bcWlQb9/h9jl4SCkbXI4K11Vr1plG2tDwmSFANHBYQXt2PuX9hKls6F/FgzYJHsbLO5B
	1dBo43bjGidzYNwTca6gadHGBu0aEL8xLJm9VbuSbQ0qgkW0riIQSgljHuQG8ejwpXAQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvSEH-00039q-D7;
	Thu, 26 Feb 2026 03:39:57 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1vvSEG-00039h-4h
 for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 03:39:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=myOpzKKufRrzTXzkKkTioHHnRh1Fxba9oHbsZ8bSehI=; b=Mt7UeNaKhTaiXHinAAyJ4qIsMp
 Hs8lNRloUw3EodwF9XaACu/IvXsDuwSb4nuyPCbAQFG0ssYrORmoGybaasEPKSCWk7MKIgLmVHoGL
 He4oUWwy63KX1bRRjlj4oyzEA6E0Irff96vddwBSod/8KhWKtHiH35jTlPA9aVYpj83Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=myOpzKKufRrzTXzkKkTioHHnRh1Fxba9oHbsZ8bSehI=; b=MMaEyVKD8tVQD9g3K7DnpWXW7C
 S96CupWpWnSdVNPUkSIaPjh15dy0KtkcsUWfjB9eaNnIQpheyndSVwGKCeAXCgl8hg3oo1bwQnUhR
 +OoMBCgX/xQRe3u5qNrSt+QIFF6XF4chgX3LDozAoiPLzHS7UxCksQv9ZaDpDQepVJKQ=;
Received: from mail-dy1-f180.google.com ([74.125.82.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vvSEF-0008Fk-MW for jfs-discussion@lists.sourceforge.net;
 Thu, 26 Feb 2026 03:39:56 +0000
Received: by mail-dy1-f180.google.com with SMTP id
 5a478bee46e88-2bdb17511aaso722423eec.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 19:39:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1772077190; x=1772681990;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=myOpzKKufRrzTXzkKkTioHHnRh1Fxba9oHbsZ8bSehI=;
 b=smtcnWVG0TTXahNz4/gmhIXv9j3SWncwCert1HZw1RqObbXpTN2jnzJkux63XVOZld
 sAVCiCXcNWJqijGISm8koyKCAjs7opteW5ayquoTj8OpwmtASbHzn0LmS9/t2ZD3ioPA
 TGDQ24XgtYnXVH4fbEFc/1/H52k+fAeQ/es+a+SzdXHN5+QEJ6gb9by8TWSkTda5aJUG
 I/adSGLPmfiEi9iOts4aN+lk1diWhI0QjCGRDrFWClXdJcBnIpQ5J/TX2LGrgdbU0HVh
 m3kt3xQrwLTpdj9oir1iyM7sVWiR5D2kECHNqAFWdwPD+ZBstACZQwtDGXPNgntFZoyi
 +SMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772077190; x=1772681990;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=myOpzKKufRrzTXzkKkTioHHnRh1Fxba9oHbsZ8bSehI=;
 b=Aao/ZzoY/OafP0ckrh0egGACoSvoCz3tLBYlmjXl7vHPXBCmwYlh/6xK8pTkeUvlr4
 fBKzV/PJiP0AUuR+IGDk6m2iwLrc7VQHPKlHVf+r2Fem5Sm1jYP2j9p5JefWDqpNigcQ
 WWkHAYRABRmCGAKMTmbFYea/+isI6bdDsHI1An2TUuilwMT9rpMqWbccdJG5f3f1Ry3P
 ZzZv2tIZon0cPQOPOBAnItTOwtl16iKXxXqGOM2CyKqI1P9IOuN/QOyjzHai7W35v6Jv
 k8XHEOedLRxXCp3c+9ZUOnCFEF+pqyrpnb7AJPNpA9HzRAxbVkojKwC/Lz7lrkQ3EDWr
 m8iQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCXSMeEzc7TaPqRz6E8z/ULm91G30ZzDWszuGUtC1pyct37mfslBrnb3zA6u9QxW3bDAvJBBFWAysJikJ9WWfg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzdWy/emTHUYgug/ZNkiqgKFi+gQhz5fgfPEDTn+vxWJC6SGdCn
 R4Qn4euwyUSr7Nsi9WQAnY9rpYdJzw3sWL4X8Tv+Ftez8WD+WA7TmlqWXBSqt/6YYxgHU87kjMV
 DGXGM
X-Gm-Gg: ATEYQzzYY6UwikGJjdCds7GBkqYkreQNL4pFgMk0rr4Qml74QNp1HZHKRgwnDlxRd3z
 Wi5lRVuF5u8/5ELfl3XG+uQ9LnRAKJW3BP59/WBIbDikHJGu/hxHmjlFQvW3auYuVf1umwKm5I1
 T6uH9BRIYfnFa0rWRyTcHd/w+2lHAIF9bWYnHx/p5RkbEG0xWCb+QIU/f2Je/W0S/omtLUYRg3y
 VL3BfOW51/ICEvM2B69kGEijCEHJ2kDnSeGUq2m3oSK1/sZ6gffEOueRRzkxLyrP+ATjeA7hvGI
 KPHo7YzW1hJxpvNf7sU4ASZ6TU4sa4l5hm3Jrb17obg89O/uthddxm+7M7No8lqkEeiyegKycYD
 07wW/u2Hg0eUjwW0wKuRcmnG1KvHEJkRYqMd2tbyS7MFak6RGXe6TDlWfFdT4eggiu/5m+K8KHH
 KEpCQeSYbsO6dNr5hy3dSmcVtcUZ8R100XTD5RYu6q1HuhJIRBGwUG8UO/Uo7H0ssfXj3P1dd69
 mh/fM33Tw==
X-Received: by 2002:a05:6808:320b:b0:462:d9a2:84e1 with SMTP id
 5614622812f47-464463ef61fmr8794809b6e.60.1772075731397; 
 Wed, 25 Feb 2026 19:15:31 -0800 (PST)
Received: from [192.168.1.150] ([198.8.77.157])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-4160cf9b240sm786090fac.8.2026.02.25.19.15.29
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Feb 2026 19:15:30 -0800 (PST)
Message-ID: <44e3e9ea-350b-4357-ba50-726e506feab5@kernel.dk>
Date: Wed, 25 Feb 2026 20:15:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Matthew Wilcox <willy@infradead.org>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
 <20260225-blk-dontcache-v2-1-70e7ac4f7108@columbia.edu>
 <c8078a80-f801-4f8a-b3cd-e2ccbfca1def@kernel.dk>
 <aZ-2G_6lDZePLSyx@casper.infradead.org>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <aZ-2G_6lDZePLSyx@casper.infradead.org>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/25/26 7:55 PM, Matthew Wilcox wrote: > On Wed, Feb 25, 
 2026 at 03:52:41PM -0700, Jens Axboe wrote: >> How well does this scale?
 I did a patch basically the same as this, but >> not using a folio [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [74.125.82.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vvSEF-0008Fk-MW
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
 linux-mm@kvack.org, linux-nilfs@vger.kernel.org, linux-ext4@vger.kernel.org,
 Namjae Jeon <linkinjeon@kernel.org>, linux-block@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Tal Zussman <tz2294@columbia.edu>, Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 linux-kernel@vger.kernel.org,
 "Vishal Moola \(Oracle\)" <vishal.moola@gmail.com>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 ntfs3@lists.linux.dev, linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DKIM_MIXED(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:willy@infradead.org,m:shaggy@kernel.org,m:jfs-discussion@lists.sourceforge.net,m:jack@suse.cz,m:yuezhang.mo@sony.com,m:me@bobcopeland.com,m:almaz.alexandrovich@paragon-software.com,m:linux-mm@kvack.org,m:linux-nilfs@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linkinjeon@kernel.org,m:linux-block@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:aivazian.tigran@gmail.com,m:tz2294@columbia.edu,m:konishi.ryusuke@gmail.com,m:brauner@kernel.org,m:sj1557.seo@samsung.com,m:linux-kernel@vger.kernel.org,m:vishal.moola@gmail.com,m:linux-fsdevel@vger.kernel.org,m:akpm@linux-foundation.org,m:ntfs3@lists.linux.dev,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,m:vishalmoola@gmail.com,s:lists@lfdr.de];
	DMARC_NA(0.00)[kernel.dk];
	FORGED_SENDER(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[24];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel-dk.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[kernel.org,lists.sourceforge.net,suse.cz,sony.com,bobcopeland.com,paragon-software.com,kvack.org,vger.kernel.org,zeniv.linux.org.uk,gmail.com,columbia.edu,samsung.com,linux-foundation.org,lists.linux.dev];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel-dk.20230601.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-0.951];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim,kernel.dk:mid]
X-Rspamd-Queue-Id: CE8D21A0A20
X-Rspamd-Action: no action

On 2/25/26 7:55 PM, Matthew Wilcox wrote:
> On Wed, Feb 25, 2026 at 03:52:41PM -0700, Jens Axboe wrote:
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
> 
> Back in 2021, I had Vishal look at switching the page cache from using
> hardirq-disabling locks to softirq-disabling locks [1].  Some of the
> feedback (which doesn't seem to be entirely findable on the lists ...)
> was that we'd be better off punting writeback completion from interrupt
> context to task context and going from spin_lock_irq() to spin_lock()
> rather than going to spin_lock_bh().
> 
> I recently saw something (possibly XFS?) promoting this idea again.
> And now there's this.  Perhaps the time has come to process all
> write-completions in task context, rather than everyone coming up with
> their own workqueues to solve their little piece of the problem?

Perhaps, even though the punting tends to suck... One idea I toyed with
but had to abandon due to fs freezeing was letting callers that process
completions in task context anyway just do the necessary work at that
time. There's literally nothing worse than having part of a completion
happen in IRQ, then punt parts of that to a worker, and need to wait for
the worker to finish whatever it needs to do - only to then wake the
target task. We can trivially do this in io_uring, as the actual
completion is posted from the task itself anyway. We just need to have
the task do the bottom half of the completion as well, rather than some
unrelated kthread worker.

I'd be worried a generic solution would be the worst of all worlds, as
it prevents optimizations that happen in eg iomap and other spots, where
only completions that absolutely need to happen in task context get
punted. There's a big difference between handling a completion inline vs
needing a round-trip to some worker to do it.

-- 
Jens Axboe


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
