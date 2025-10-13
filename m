Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D16CBD30E3
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2xnSZOjiIFKGWDifVXwbq1ErkDwa0iVJN6GPVY1xtl0=; b=lo+muO1xCwTXFxxHKjs4TFj1Ug
	fglyPTBAD92B293NxwslblnDHKsgUvRyOLTZQHa1qLajR5K8WAIzr0ITNi38HLzq0FdS7XvzPUkMJ
	Me3DCk1SGi+bOHSnJMPKDL30FGumJhZcCckv8I1jPRA6prja+b2UoZ/YlYfIEcqcZZD8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Hz4-0004Jl-NS;
	Mon, 13 Oct 2025 12:49:02 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1v8Hz3-0004JN-4f
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=V6YxR1nTJCDrfaOZFN3CnG2vV5jcoOfzGFCcTcZo0jw=; b=Zse3kUhu9al1o8s2sj13beiY5l
 UOOOgk+G9eET8c2dqXc25egphk3xNK6pjKOqRYj2USLwjbZEL/y/2qrrK4qUwrde+WcULAxoVy94L
 g5JikTXrtpBFFFNqFTo4gm1AIvuSewaV3uOpbSJehRX977bDyZlKHRUZ0NgbooQIdvuk=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=V6YxR1nTJCDrfaOZFN3CnG2vV5jcoOfzGFCcTcZo0jw=; b=YA3zDdaSrhXI4ZSeJak++9CKq5
 Y7GPulpLJ8qG8Dj1GLIedgr6n5Yd2za1yc0ClyOgZGkAWXeLMMcsTH9EEYAJWZypHui5nBvxOD2kv
 Z75wAoEkoqC3vVaVMRO2PDRQ9ueltVg90rN8xwfHCp5D1PxjSRrTYWvaG6bkSzwTaeaI=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Hz2-0005FO-DN for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:49:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760359734;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=V6YxR1nTJCDrfaOZFN3CnG2vV5jcoOfzGFCcTcZo0jw=;
 b=gCeK9oDbwUpVGMJ5X0xQoBymzfm5LIlOlFfHGArX5/g7WHLGr51MhRSij2X5tRlyKBSCae
 noFeR2Ep06+Y5IVIA08vsZ3x8Ro3M4Gw5OxZhmAO3pPVejO29nGTsMW3vk4spQnSUvfoXa
 vEyBf2buwCQswLRQJlF+bjUxusvbmVY=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-478-rUua3fBuPtyweuBNkOm1TQ-1; Mon, 13 Oct 2025 08:48:53 -0400
X-MC-Unique: rUua3fBuPtyweuBNkOm1TQ-1
X-Mimecast-MFC-AGG-ID: rUua3fBuPtyweuBNkOm1TQ_1760359732
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-46e2c11b94cso29430215e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 13 Oct 2025 05:48:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760359732; x=1760964532;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=V6YxR1nTJCDrfaOZFN3CnG2vV5jcoOfzGFCcTcZo0jw=;
 b=stZ1D86AEfMMMo5xkbD0nwN6TxetNL+nYjRxXVz78lkAHHsdrLSf75Sd2d+b5gEbTy
 RtVjQi3m5E+YuSdwnboHgKNAdHZynfV2gMel7ze6E501akPA4kKbt7PpekBEfGQDYn70
 AN1Vwh9M9K1miM+9nnoG59XHIt9OauIvrcEq8f/F2H+z51CWnuAdzLRa3ZrnI/sYnL74
 c7w/3USBK3iOEk1p2koVstQZv4rPmBOHaDVNHKt3gdwPntBzt3Q5x6Un21wp/SIe4FT1
 hXFiKahJQ7iaUo3aT/3izAPxatuO1uagm4F1Nd464BUM6sVOq5aVBllyNlfLIYGMxR0U
 irYw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWCRE/72bH4bme2Uplv2ut4+EBE7HqTajZ6AZPFRM2rFHcQyZ96gr5XYfSek/2+mVV5IWMHVyg1QQcuf1tSYg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yx5XrxhugSayxfy+O18XuSX6YSsru+k7sDADIf6IBS33j50xci2
 na7Ypn68NbMpp/rHC+XheyieqR9z1mO6xTP/b/jHo2fIheYm/pAapoTVodyutnwaIYS+sZ6Md9I
 15EPR5QjR+CjQ8UviSY2PokVnzzbPRkOYDkYlw15+2gf7tD4LfC86Yyz1awnE5OIMaiVZwChKtY
 zs
X-Gm-Gg: ASbGnctob0Vbwj5EY2s3zdN8j/AGcNSLInh/0svxwFLNi362EA1sIzZsz1bytBdxqEH
 MbEZefDU1NgbnOV0F/5YK83jbbK0jePNZxEzoCT/BUpYkxGib6y/T3kanIbbucS9ArUj/dh4bRA
 k2PtIqLM/BQILVGiG/r8SIPcRCB3vdRl+ZvQwkxGRQjmbIjQjiHEZdvkwZRiIIRNTTh58EhFh2F
 rdrGyYHVhN6k16ghEAx8C95WvURB8Hfdjj4onFe/z9Xnt60ctV+yXw9+d4TsJ+7LvE57hxFxKt+
 ykvLIzHUu8Rdku9CQo9Bx1goSNY8X04rdXIfQ2C2vuJOiSE9i87GTEiddLupqxkYcoH92f0HqyV
 x7NQ=
X-Received: by 2002:a05:600c:530e:b0:46e:4c90:81d0 with SMTP id
 5b1f17b1804b1-46fa9a8f1c5mr144086845e9.2.1760359731941; 
 Mon, 13 Oct 2025 05:48:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGGLnouyUlx2MAgaHkKm2L1dKdQ4wuo7Nrhykv7xLHekC80pf6DEJPuKh5QZvTCPV+to9J8TA==
X-Received: by 2002:a05:600c:530e:b0:46e:4c90:81d0 with SMTP id
 5b1f17b1804b1-46fa9a8f1c5mr144086535e9.2.1760359731494; 
 Mon, 13 Oct 2025 05:48:51 -0700 (PDT)
Received: from [192.168.3.141] (tmo-083-189.customers.d1-online.com.
 [80.187.83.189]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-46fb497aec2sm189420095e9.1.2025.10.13.05.48.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Oct 2025 05:48:51 -0700 (PDT)
Message-ID: <41f5cd92-6bd8-46d4-afce-3c14a1cd48dc@redhat.com>
Date: Mon, 13 Oct 2025 14:48:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Christoph Hellwig <hch@lst.de>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Eric Van Hensbergen <ericvh@kernel.org>, Latchesar Ionkov
 <lucho@ionkov.net>, Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Mark Fasheh <mark@fasheh.com>,
 Joel Becker <jlbec@evilplan.org>, Joseph Qi <joseph.qi@linux.alibaba.com>
References: <20251013025808.4111128-1-hch@lst.de>
 <20251013025808.4111128-7-hch@lst.de>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <20251013025808.4111128-7-hch@lst.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: okmbrM7Cdcx8Daf0nEQMI8xAGmSwbmh0GpFrlzK0rWU_1760359732
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  > @@ -474, 6 +474,
 28 @@ int filemap_flush(struct address_space
 *mapping) > } > EXPORT_SYMBOL(filemap_flush); > > +/* > + * Start writeback
 on @nr_to_write pages from @mapping. No one but the existing [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.133.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1v8Hz2-0005FO-DN
Subject: Re: [Jfs-discussion] [PATCH 06/10] mm,
 btrfs: add a filemap_fdatawrite_kick_nr helper
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
From: David Hildenbrand via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: David Hildenbrand <david@redhat.com>
Cc: linux-xfs@vger.kernel.org, Christian Brauner <brauner@kernel.org>,
 Jan Kara <jack@suse.cz>, linux-mm@kvack.org, v9fs@lists.linux.dev,
 Josef Bacik <josef@toxicpanda.com>, linux-block@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, Alexander Viro <viro@zeniv.linux.org.uk>,
 jfs-discussion@lists.sourceforge.net, linux-fsdevel@vger.kernel.org,
 linux-ext4@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


> @@ -474,6 +474,28 @@ int filemap_flush(struct address_space *mapping)
>   }
>   EXPORT_SYMBOL(filemap_flush);
>   
> +/*
> + * Start writeback on @nr_to_write pages from @mapping.  No one but the existing
> + * btrfs caller should be using this.  Talk to linux-mm if you think adding a
> + * new caller is a good idea.
> + */

Nit: We seem to prefer proper kerneldoc for filemap_fdatawrite* functions.

> +int filemap_fdatawrite_kick_nr(struct address_space *mapping, long *nr_to_write)
> +{
> +	struct writeback_control wbc = {
> +		.nr_to_write = *nr_to_write,
> +		.sync_mode = WB_SYNC_NONE,
> +		.range_start = 0,
> +		.range_end = LLONG_MAX,
> +	};
> +	int ret;
> +
> +	ret = filemap_fdatawrite_wbc(mapping, &wbc);
> +	if (!ret)
> +		*nr_to_write = wbc.nr_to_write;
> +	return ret;
> +}
> +EXPORT_SYMBOL_FOR_MODULES(filemap_fdatawrite_kick_nr, "btrfs");
> +
>   /**
>    * filemap_range_has_page - check if a page exists in range.
>    * @mapping:           address space within which to check


I think there is still a discussion on the name, but in general LGTM

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Cheers

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
