Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C8FF9BD30A4
	for <lists+jfs-discussion@lfdr.de>; Mon, 13 Oct 2025 14:46:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Type:Content-Transfer-Encoding:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:References:To:MIME-Version:Date:
	Message-ID:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OkxRAl0ez49zJXUYHON+336++AkShDdd05Mm/lfi87s=; b=SMhtGklZdKq4c/I2nZq47iWT+F
	y75f6zAA5FwckQwnd/2pselUQwQhp6MUiqCDoY2DCP7FmoRdHhtJ2rnh8lAeaZ1PxTZ3EsDk1Q2as
	83/g7PmpIaO81ZFj8cnh1L1wXqkJ4HMHBA+ZymwCOdu1vRCOyi+X3rRQZPzKhukLVAIE=;
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1v8Hwf-0002bO-2v;
	Mon, 13 Oct 2025 12:46:33 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <david@redhat.com>) id 1v8Hwd-0002bH-T5
 for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DOWtspxQFntLxn3tZgWb3b+wVou4f2oHZHARZ/GY+qM=; b=FqXUZne5L6NskqE5NOBzv3tI6k
 BjGzD6nQDyD6dZa6kM152r95+aMKDNz7yQDW8AtwS5q5qzUo0vgGmktddYgKinQx2Y9CcC/s6eDXt
 0UcClSF9m/JCtHO4+SBBeEA5G9ivjT6v70q9w6v2ilowzpmWUjZPKBzLxmxgoEUzNacQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=DOWtspxQFntLxn3tZgWb3b+wVou4f2oHZHARZ/GY+qM=; b=cxWvqcWz/kTjAtAiC0LWL0J4VT
 nFnBaLHioDn4ZOm1QBubzXx1+H6i4lmlCm7pEimz4CtKBkKNiAkxBI+8n/DWc5eklwjN5bCHq2lwx
 ov8oNKWmOhYhC+PzZBUavtjlVEtfnZM58giXVabJwuauQfk7LNZx+Rb+BRbHKFeKwFMY=;
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1v8Hwd-000561-5q for jfs-discussion@lists.sourceforge.net;
 Mon, 13 Oct 2025 12:46:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1760359584;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references:autocrypt:autocrypt;
 bh=DOWtspxQFntLxn3tZgWb3b+wVou4f2oHZHARZ/GY+qM=;
 b=bpz/sDNblwgTSGTWZo4MlbGOjBOyEfFRC0Hx20fuPhoQmlcrM7ff/rI50to4q+K48NPR7d
 1wDzhiRplMyheNHMCl0EuuDvOBHCKV+CFsbIbREARqfAWMz2HZlBgbtsrvoHCIKGZO2Kls
 rvy635xVERGNSpBrSyhZMRQYY5MEG6Q=
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com
 [209.85.128.70]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-297-1E9phXMgNkmy4KD2BPQHow-1; Mon, 13 Oct 2025 08:46:23 -0400
X-MC-Unique: 1E9phXMgNkmy4KD2BPQHow-1
X-Mimecast-MFC-AGG-ID: 1E9phXMgNkmy4KD2BPQHow_1760359582
Received: by mail-wm1-f70.google.com with SMTP id
 5b1f17b1804b1-46e38957979so23582995e9.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 13 Oct 2025 05:46:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1760359581; x=1760964381;
 h=content-transfer-encoding:in-reply-to:autocrypt:content-language
 :from:references:cc:to:subject:user-agent:mime-version:date
 :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
 :reply-to;
 bh=DOWtspxQFntLxn3tZgWb3b+wVou4f2oHZHARZ/GY+qM=;
 b=vxRuTZFBd7SmXQGOwmhA3ReJgNFdaJpgUl6E5mXhncptnm5HLBeL5pexfnMm3lLR//
 EvOdgb67L/JolOZZh+fLYzzaK51AKz1EefIQBp72eQLavnKuqJOb9NulbXKBNo26952S
 TZcd7i68kiWmwFKyrb5cmIWCfT+q/BnhNTkrAIUuT4IhnRHwTascMiXwcpRdJttzq0H0
 FeJQnELkwWY6FyQhX+2DJe1CJ8JYMzIGKbelkVWTAVZPCY0NmCCa8MUueE/ztp7GfeyS
 /1JJ0FBMFI+WY2xu3962q0lPxX8bqH3X/CEla1klQ1sNgC6yqzDBghOdpYqp6gcGnrP/
 mzPw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUjlBrPCNgR+W6/nCdjrxT6qGfDbuJba7rKvXjOZ9Sx1Lq11p5j4mhWyZzltAGUCSJkZsl0EabRGCBLMy1Fhg==@lists.sourceforge.net
X-Gm-Message-State: AOJu0Yy5K0JfnB7u3vcby6tcZEyXWxYgRz1O0cxgeXxvQ0Kb7Fum4ZOB
 fQ4Ea5AFyys5Y+M8d5dFycQTq0YWCoVCO7vA7ETGpQZy6nCPzoKPXEuOEem4v5KAmelp2FEeP0i
 U/HvEWgh2KYx/1ldnpz6zfbDdy9llKlU/SEzfNBBDGsB87pZBjyG/HOgadWc2dNhsVBtz9puATM
 tV
X-Gm-Gg: ASbGncubd55fk+9Yjdz1Ni3L8QQZpqMvtL6Hk/IPhilct3oxhvnBjfQqzMi5Fm6nj83
 GH1zud09mRfQo064owCnjOskqlnugjWundFXRwXxzARqVy/Tw49ytLYxBGI3raPTGlZhYuU2xWj
 OOeIOAnehGC9aaU91Obah7GFFw+BtXWteakLoLo8Tl2+N0tIntriRf3F6VawtuBw/JTt/RicCM/
 mNjtqwVHa2sICbpwzpCWQsUv8tNxJa4M0D7TZWnd9a0P8mHWaYojRbsM4u/MkCg2i+DlLbJUB1y
 zyAk30D/6KDKgZGdvbNxoIQq6dpS0uMPRE2eDqzDNHAaJKiT6onNmJlQbhLiz6S8L24iickj2hv
 VfHk=
X-Received: by 2002:a5d:5d02:0:b0:425:7c1b:9344 with SMTP id
 ffacd0b85a97d-42666ab87c3mr12660092f8f.15.1760359581537; 
 Mon, 13 Oct 2025 05:46:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG8UhyE1zcOzwvyZxntvIRmTrppgW1S8a55KmrUdjOiVEiYyQgg0jajjwhannoKAXqQXoZQ2Q==
X-Received: by 2002:a5d:5d02:0:b0:425:7c1b:9344 with SMTP id
 ffacd0b85a97d-42666ab87c3mr12660066f8f.15.1760359581095; 
 Mon, 13 Oct 2025 05:46:21 -0700 (PDT)
Received: from [192.168.3.141] (tmo-083-189.customers.d1-online.com.
 [80.187.83.189]) by smtp.gmail.com with ESMTPSA id
 ffacd0b85a97d-426ce5e82dfsm18142892f8f.52.2025.10.13.05.46.18
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 13 Oct 2025 05:46:20 -0700 (PDT)
Message-ID: <a5ba4cdf-5da9-4e3e-af06-ad4ea5c3f659@redhat.com>
Date: Mon, 13 Oct 2025 14:46:17 +0200
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
 <20251013025808.4111128-2-hch@lst.de>
Autocrypt: addr=david@redhat.com; keydata=
 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
 qIws/H2t
In-Reply-To: <20251013025808.4111128-2-hch@lst.de>
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: UFT3N7tCm-YgcVkgIGysLFgRlIMspr5t6un3MkzAoUU_1760359582
X-Mimecast-Originator: redhat.com
Content-Language: en-US
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 13.10.25 04:57,
 Christoph Hellwig wrote: > Use filemap_fdatawrite_range
 instead of opencoding the logic using > filemap_fdatawrite_wbc. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> > --- Reviewed-by: David Hildenbrand
 <david@redhat.com>
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
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [170.10.129.124 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1v8Hwd-000561-5q
Subject: Re: [Jfs-discussion] [PATCH 01/10] mm: don't opencode
 filemap_fdatawrite_range in filemap_invalidate_inode
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

On 13.10.25 04:57, Christoph Hellwig wrote:
> Use filemap_fdatawrite_range instead of opencoding the logic using
> filemap_fdatawrite_wbc.
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
