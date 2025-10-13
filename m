Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id CC58ABD311F
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:50:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Piei3cqUUPkYHalWyYAX3IthxVg3HnpK44tTX6PPfGw=; b=MudogpATiu4BE/4swjn21ePvQt
	zn7jP03jgAuuQTfJwJafc1Iadn1HA7kk42Y6vkcDBFTJm53RapMEffxmnyR/OfB6R//dFQy9B43E/
	u1UMecUFsxYDGkv9JelTY7yT9agkhJIO76bwnw+wxA+8hJPqtoLHlVSAcZY5Y3ei6BmQ=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8I0c-0004J0-S8;
	Mon, 13 Oct 2025 12:50:38 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1v8I0a-0004It-OE
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fmLpGViBdbcMLzx1bb+Kxqb3+3UtyUNscErHdno+a+c=; b=fQ3loOyAfneNexNkwEh1O06ltM
 szkhPKkBUCXRSQZp1Jx7lXGNBDQ0MyHCc/UfmCsf4t2e4yJUxEMxLTUgG9g5NvwqEatmTYEVI0WUt
 Voacsr7XwFB355Wqa01L+cB24q9wmek1libFKGElwjws8MfbywgRKyFFStMsiQbJK9KE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fmLpGViBdbcMLzx1bb+Kxqb3+3UtyUNscErHdno+a+c=; b=S9/i56xuqwwQH70K34uiJbDLvE
 EPmmbtj1dAAeqmjMBVeqOStnxujedhYno0Ahw55tXe04CA+vT7Fd8FiJagHakvXyozxOoHB95vxi4
 Gzfpd3jHTcimvmiwkZZlrYCVAKsGE83+Zdkp+uOvk6M8NEdXJT23EVcUf4KQAdcNVaBE=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8I0a-0005MX-8U for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:50:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760359830;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=fmLpGViBdbcMLzx1bb+Kxqb3+3UtyUNscErHdno+a+c=;
 b=ApjK8+TFmj8PXajDObDIt9yfNi3EoONxgd2NJAwnKwimYfnsS5Oir/jBFUCDgIB+kXO8Bd
 hsEiNDymu2Eb70hbPA/2uDUyE3j1Hld+btEopoW/4UU4jt88msJmn0VS3QcDn/KIAjykAZ
 pVUXyuQrVIsA8qlwe/Q2TGF5t5bpQPY=
Received: from mail-wm1-f71.google.com (mail-wm1-f71.google.com
 [209.85.128.71]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-629-xF6NV_zHOmCzgIvKuZ64OQ-1; Mon, 13 Oct 2025 08:50:29 -0400
X-MC-Unique: xF6NV_zHOmCzgIvKuZ64OQ-1
X-Mimecast-MFC-AGG-ID: xF6NV_zHOmCzgIvKuZ64OQ_1760359828
Received: by mail-wm1-f71.google.com with SMTP id
 5b1f17b1804b1-46e3ef2dd66so27406295e9.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 13 Oct 2025 05:50:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760359828; x=1760964628;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=fmLpGViBdbcMLzx1bb+Kxqb3+3UtyUNscErHdno+a+c=;
 b=DPriv2fgXyqDzjKIFZ0TKjs3SOZwzpqwRRMbU9wN3R/z66aDpbOpagaEZzeaRovpq9
 GZQ26W1I25GjxNRxmVeeANMZGYwUxWyazyB308CD/NIzmEPmN1nL/iLvZGLOk6xTHXHM
 2dnevlWqyunJgYeiNcgR7lOeinc8y3IBL+BiBalGRAvIo/vrel1HnAlidjEHrJtpKLG5
 Dzcyb7vMkFlg4g6Y6DdwdJENwwhTQSuCOMLn9UOZYKWkwbgAr1w+po56ToynyQNmYofQ
 T3gNSg2+Bi8O23RjX4vcmYyskgmVC3cBDtDU6qyJtCjuryHvgc5Sh/+wBt2gt+eBKKU3
 Kt9g==
X-Forwarded-Encrypted: i=1;
 AJvYcCVD9o9cJih+am56b/iAbg1N90rsGLrNFbZQlT5P+/kVIpPUsGfniNbjHtuY0aWARU2qAZyO+83oZg9CuEJ38Q==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwrVT3MTpvJLdayfSAO7aoWlDZYF9cz1K44JWy6XbzwYZewnCjZ
 q2HSQs8VM5eWWQPnwTfZMBL+vbo6yPEFkMD/bNabUkv/JLKrCq5oCAke0FQaLbKUNzianotcOz9
 y+c1lvz4UqhqibPkLHWaD7DhqXsrukkIBAiSu0CYYiS9d0M7f3ucOzKWDx6doyXJ86j71ou7ih1
 eK
X-Gm-Gg: ASbGncvuXt38gSsvgDb8H/5wHANLqTsSx7dim+L7wnlkD5mBmL/hHdrznI4z+11Vhpa
 XGBajQt+h0TMRI9gm4EBJqe3kspyfvzGrA7t24nfa3P848bd6eCs3xa7dryUwDEaHi/35WyvSfA
 6ewW6WyR/gaQts/C7GSotsP3XU8LGuQDpnYMUsG4nQs4P/hOdORknor5CrjURNd7Dwge6A9W4Dd
 mmex4SKa/08kaCDIAZL43JOpssH+JAXJpgGjFMohlA7s3dUbbeIj+jvU4XifbJNp8ISJSG1h4hM
 HZDZ5rz8bLDmK9In1IkH88uWwLLEG/aXvjeVRdZXVK1jMpLajMhCFSrSmAu6cuxDF9Vd8Epevfr
 9qdA=
X-Received: by 2002:a05:600c:6011:b0:45c:b642:87a6 with SMTP id
 5b1f17b1804b1-46fa28bbca1mr126817325e9.0.1760359828004; 
 Mon, 13 Oct 2025 05:50:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMMoKs4VS2gHV3gKsNnQk9DNjQ77BVoRLFBciblN4uYmPY7ldMdNRqp+3ZL0M1o/a3ErG8+Q==
X-Received: by 2002:a05:600c:6011:b0:45c:b642:87a6 with SMTP id
 5b1f17b1804b1-46fa28bbca1mr126817005e9.0.1760359827614; 
 Mon, 13 Oct 2025 05:50:27 -0700 (PDT)
Received: from [192.168.3.141] (tmo-083-189.customers.d1-online.com.
 [80.187.83.189]) by smtp.gmail.com with ESMTPSA id
 5b1f17b1804b1-46fb49c3e49sm183435545e9.16.2025.10.13.05.50.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Oct 2025 05:50:27 -0700 (PDT)
Message-ID: <3fdede63-0bb7-4618-af45-6605ed25b6c0@redhat.com>
Date: Mon, 13 Oct 2025 14:50:24 +0200
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
 <20251013025808.4111128-9-hch@lst.de>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <20251013025808.4111128-9-hch@lst.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: L3BqrH5rIUEYxbCWRtKypXQmP_yghw6auIqDZu83Ra8_1760359828
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13.10.25 04:58,
 Christoph Hellwig wrote: > Replace filemap_fdatawrite_wbc, 
 which exposes a writeback_control to the > callers with a __filemap_fdatawrite
 helper that takes all the possible > argume [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [170.10.129.124 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v8I0a-0005MX-8U
Subject: Re: [Jfs-discussion] [PATCH 08/10] mm: remove filemap_fdatawrite_wbc
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

On 13.10.25 04:58, Christoph Hellwig wrote:
> Replace filemap_fdatawrite_wbc, which exposes a writeback_control to the
> callers with a __filemap_fdatawrite helper that takes all the possible
> arguments and declares the writeback_control itself.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---

Reviewed-by: David Hildenbrand <david@redhat.com>

-- 
Cheers

David / dhildenb



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
