Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAZeIC8zl2kcvgIAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 16:58:39 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BCA58160713
	for <lists+jfs-discussion@lfdr.de>; Thu, 19 Feb 2026 16:58:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Subject:In-Reply-To:From:References:To:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5Eh96i8rVfKCRkuDEV4VgAWPQG+eLxv+9/waehuqXc0=; b=GnvnzQqTpshwYA2nJhIK6fyKFb
	BqPI2tISBgeeeX/8DfCWvtw3YNMoo9LIuk5fJVtcvYomExKTkqu7P7nGYpLuZ3HnR13Ly65IGM3CU
	CPf/rhBb5lcOdPOfUJmwGb85fw+LJafxxpq90DVqc+5m4xOfTOR3NQEEJiNJgje/aDdw=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vt6Pe-0004kF-Gv;
	Thu, 19 Feb 2026 15:57:58 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1vt6Pd-0004k7-9L
 for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Feb 2026 15:57:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JgHRaYW1iBhNDu18vHtaVid1O4fLAXLvbx6+OcL28Ko=; b=Q4nn8njJjrXme189t8jOTmBbkI
 KgI86LTSigIwmW2m6cRPs5gOcLV9zjNaOV36k3iYMbuRZL36rFOSnY6POJiz7uTzuMDnFMGuT/yqZ
 MIKn+8qXfsBIpJd00B7RvRw8witg/GwcuGJkyH/KM7tgKKj7hE94aFeT8pGrRsSHOrcs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JgHRaYW1iBhNDu18vHtaVid1O4fLAXLvbx6+OcL28Ko=; b=WExfSonUlAg6t+j22qKtDWndT8
 QGlR9nkeZw+Z5OUUe9/cZYqrIYSE7selra85zWbcrNKTo+i3/AoXsY1KIHQzJlIerrQDyxbPWuQqo
 CUKYsmigVhb13PLpO2vvQlBEcx5SELUkTHPsg7ECp6EmFbXEr856ABvyoZhVOKshW2Pk=;
Received: from mail-qt1-f177.google.com ([209.85.160.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vt6Pc-0000jm-3f for jfs-discussion@lists.sourceforge.net;
 Thu, 19 Feb 2026 15:57:57 +0000
Received: by mail-qt1-f177.google.com with SMTP id
 d75a77b69052e-5033387c80aso28163391cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 19 Feb 2026 07:57:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20230601.gappssmtp.com; s=20230601; t=1771516665; x=1772121465;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=JgHRaYW1iBhNDu18vHtaVid1O4fLAXLvbx6+OcL28Ko=;
 b=1k92PlmHmwIIB71yWw0xc849tiNl5Q2K2CjF2AMN75SrJQsNoSFgfwSti+5Tj5fRi9
 z/xhUxVVjlpZceDnOKmkEUFjzJ1GJ7JuDtbvSp2GW1miLcwn1IopmdaEJnNGNxIZg3EJ
 pK632snujJMeiT8Krjq9Y/WskV7ObL2AOQ2rMNZZdN8h3N3ccVRsOd7if7jllgi5iP9X
 fKE9Zw7J40IteiSOZ5XQvXFiKU2V8BSyxagO6RQe1EGERbS965SEtHicMOapwQ022I8l
 7NVIR/nT8Kg5LXizLgIWmFLJwMMVPYJGXCbe1SaySsPkVx7mwNjlrWDxSjVD+hwD/smf
 vSXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1771516665; x=1772121465;
 h=content-transfer-encoding:in-reply-to:from:content-language
 :references:cc:to:subject:user-agent:mime-version:date:message-id
 :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=JgHRaYW1iBhNDu18vHtaVid1O4fLAXLvbx6+OcL28Ko=;
 b=mxCUxy2iSMYNVNpWignsclzHqATDUkzMj3S84eUbyApb7GMKip3+55g9rw5lxrig5i
 r4JpFuHFRwzwThD5IxX4fjT+UXw0qW5HbSxNa9FZUkJalcIURYpy82yX64YXMYXGEIoJ
 BpRCL8fXefVJ2mD3beLokH7UGuVHc8UOb2Xx/EGJeIWpcT+Tu+Ehqf+C96bAkVY/HQ9E
 olfk4CR9E70Yex07bkdDoMMZhRdITu+oaM/OylwYvrinlLUhkj9KpwE8W3qVCDa/6rJo
 xG3jHBzsVHihNV7xftjRKr1cB+ljjOppHDzIjeH9XUOAuGfSIIYL79pDyartKKz/QSak
 NLBg==
X-Forwarded-Encrypted: i=1;
 AJvYcCUIBie1Ihnoq26KUF43gIazOzUTQeeAKEFmKiqmPsbvZQyXTtro/8QAQXGgyhCWrFo43SRJeEis258PKcWtiA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyBHq9HT1TwRgsP+I3OlLFurAP/OZRjOjEEWWXRVYw67l2m1QBf
 PamqREXgQnlrvbNT1zHYC8kkaTwfJTqFAEzPsRCJF0PmDSTwR9puBXKKfWs2XILLlomg0Qe2phd
 kgmU1s1cZNQ==
X-Gm-Gg: AZuq6aLGiix9hTT+VtEO3YNtT/eo/j2RfVdeOAHJyyypL1EhzNndMm64Q2F3Wgi8Vib
 iag0TBVi21EosTADkLrxKvnxTFp0dnFH1fY30JblJNINY1HJUCMpWv6iVS9IaA400NoO8fbVszg
 Qz5r98BwgfLGPtEKd6gIjy0YPZz0tTgTPghL5Ocvft08d/jgJazye4LLBUP2xh2Nhw1VWbEVoss
 GAHThZidMx39rpy6ahEBX4SIdXFHuhOlqs0YinHbQWDTY3At7MnqHyRK1iu5XqDc1H3b7ehmm6k
 hQyvUgE47rTU1YmpTxfpFqdduKVxBUuibX8TRWVYIzaq9xTE3jz/9ci6Y7syq7ewpiBl/T1q/ko
 MjHej2f7WShisJK4kB1at26v9mwuanENVQh1mOdflU0loz3eAfm+/Vh0R8aW8YI11/Ij+IdLsBG
 VSfWWFYxIo2SX2bCjJHJVyjlnAwIjwHL6YUbu277p3u8NVe4azCXVVenzcay/2okkjA2DhetEMw
 7BuiBIVuEY=
X-Received: by 2002:a05:6870:a0ad:b0:414:9285:c243 with SMTP id
 586e51a60fabf-41545713115mr1093784fac.21.1771514681487; 
 Thu, 19 Feb 2026 07:24:41 -0800 (PST)
Received: from [172.25.209.35] ([187.199.77.89])
 by smtp.gmail.com with ESMTPSA id
 586e51a60fabf-40f062ee328sm17955312fac.4.2026.02.19.07.24.38
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Feb 2026 07:24:40 -0800 (PST)
Message-ID: <35866783-2312-4e31-904d-3746510eaf56@kernel.dk>
Date: Thu, 19 Feb 2026 08:24:38 -0700
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
 Bob Copeland <me@bobcopeland.com>
References: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
Content-Language: en-US
From: Jens Axboe <axboe@kernel.dk>
In-Reply-To: <20260218-blk-dontcache-v1-1-fad6675ef71f@columbia.edu>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 2/18/26 2:13 PM,
 Tal Zussman wrote: > Block device buffered
 reads and writes already pass through > filemap_read() and
 iomap_file_buffered_write()
 respectively, both of > which handle IOCB_DONTCACH [...] 
 Content analysis details:   (0.0 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.177 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vt6Pc-0000jm-3f
Subject: Re: [Jfs-discussion] [PATCH RFC] block: enable RWF_DONTCACHE for
 block devices
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
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-karma-devel@lists.sourceforge.net
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:tz2294@columbia.edu,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[kernel.dk];
	FREEMAIL_TO(0.00)[columbia.edu,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com];
	FORGED_SENDER(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[21];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,kernel-dk.20230601.gappssmtp.com:s=20230601];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[axboe@kernel.dk,jfs-discussion-bounces@lists.sourceforge.net];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,kernel-dk.20230601.gappssmtp.com:-];
	NEURAL_HAM(-0.00)[-0.996];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[kernel.dk:mid]
X-Rspamd-Queue-Id: BCA58160713
X-Rspamd-Action: no action

On 2/18/26 2:13 PM, Tal Zussman wrote:
> Block device buffered reads and writes already pass through
> filemap_read() and iomap_file_buffered_write() respectively, both of
> which handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device files
> by setting FOP_DONTCACHE in def_blk_fops.
> 
> For CONFIG_BUFFER_HEAD paths, thread the kiocb through
> block_write_begin() so that buffer_head-based I/O can use DONTCACHE
> behavior as well. Callers without a kiocb context (e.g. nilfs2 recovery)
> pass NULL, which preserves the existing behavior.
> 
> This support is useful for databases that operate on raw block devices,
> among other userspace applications.

OOO right now so I'll take a real look when I'm back, but when I
originally did this work, it's not the issue side that's the issue. It's
the pruning done from completion context, and you need to ensure that's
sane context for that (non-irq).

-- 
Jens Axboe


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
