Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D985D4FAA0A
	for <lists+jfs-discussion@lfdr.de>; Sat,  9 Apr 2022 20:00:22 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ndFNJ-0002D0-31; Sat, 09 Apr 2022 17:59:52 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <christoph.boehmwalder@linbit.com>)
 id 1nd75l-0006nC-Oj
 for jfs-discussion@lists.sourceforge.net; Sat, 09 Apr 2022 09:09:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sw+fQbvS6SFTnotjqrxbhqCVHIPsenv7yxMzOYGId1I=; b=Ps7RxKyqdH8FAGInscHvP+vEXy
 ercJHDa5BqNl8hnZhJe73I2skS4dcm0nbasiSUeOjcHFAhUAReDO5dpTPx4foe4CEUXk+rUzYn6Yp
 jA4UFCpFxDbruAoE9kvdnBb+k36z8aQcDOQC9kuOGbwjPXdGyA7gMzRjUzNie/8qC7wY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sw+fQbvS6SFTnotjqrxbhqCVHIPsenv7yxMzOYGId1I=; b=CrvL4AEpSLpZSeds3Ng1pIC1KX
 9Us3GI4EZQhwHbjBHAa5pdQVLnpDgDbdhXp3Eg8SM0lijkWmsZXKkXxZHGtEghcatnFhuglmdWO9H
 LAGhJqBP/zlZA3dqatKalRtbl5MUrBNjHTDHMUpQkfiCmyZTg+JzjxyvfYHkFsWLJxz8=;
Received: from mail-lf1-f47.google.com ([209.85.167.47])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nd75j-0000xb-J1
 for jfs-discussion@lists.sourceforge.net; Sat, 09 Apr 2022 09:09:12 +0000
Received: by mail-lf1-f47.google.com with SMTP id u7so1579353lfs.8
 for <jfs-discussion@lists.sourceforge.net>;
 Sat, 09 Apr 2022 02:09:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linbit-com.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=sw+fQbvS6SFTnotjqrxbhqCVHIPsenv7yxMzOYGId1I=;
 b=swx5mkkbJNix1TPl46oJjK+Fw0+J2z/XHhCyUPh+dcKkTNBekj88xkgZeDCIEgfzZd
 +FA0t7ckuNM4K4OwCilxgo/M+WNIfDm8hTC88nPXmxm39Wp7Y3PlmqfYEyysUU8hQUUf
 QcFmQYaxbOUrhMO1omCXZ8F/Rog5zixS+JPWEUQR0KkNkX4orlWG0JIiavrTh9qI4888
 PfuJYdextltFDNT3Q+47ZPQuPkokUbAa0jhifptu2z1GSQMaUF7eHMsw0ukFDymbedqA
 fJT7coHgReWy+GC/y+kW2UJS/DziuPPZTxFTP9KzlhdtF9p6DIhUJyZVoMiIdhtFkJM+
 cESQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=sw+fQbvS6SFTnotjqrxbhqCVHIPsenv7yxMzOYGId1I=;
 b=caCBjcnowodO8wCEX2d/dpkfzJ+NzY/9IN36I0xv6QVMiZchKbLsI97cs+KWhd/QcV
 3wGRP0820AtJ3XbaAOQXLZRIoMJamw1LcIaYek+3p93QUd07jQUDyE4PjSHkj1fcyL5q
 tWbzp3nFKbkqMr0ZWjIurIxuZFQfrnmo8CqSuLZGzxdPoAp4bcHKvqhmLK1SICCHinPP
 TxzVqcA9gpaVwpYUfukK0gTkCcJ8SPm5duAAZ488AazrGvnqPlamNQgQrzLACfC8Oll+
 F2cybXIdfnj/QqfqvCx4j/lQqLe53NYl8IFyH40uENj/kIVKp8D1A/EhMZ9RHRgnjPad
 q4zw==
X-Gm-Message-State: AOAM530EQp28tdytcEgmUsCfCr5WLWNVV/YODvx+tzhbOX+zQX0pWjkD
 OVBs6A1eOHsUhAoPaZJQS0u90TfVVYhVhxEAdmA=
X-Google-Smtp-Source: ABdhPJzQQyyFsXyXf3Tt03078VjcrkSv2k98fwj9oToPATRHlAVDyH773lIm4bEik17KjObuot5lIg==
X-Received: by 2002:a5d:6c6b:0:b0:1ea:77ea:dde8 with SMTP id
 r11-20020a5d6c6b000000b001ea77eadde8mr17920640wrz.690.1649492137216; 
 Sat, 09 Apr 2022 01:15:37 -0700 (PDT)
Received: from [192.168.169.127] (178.115.52.210.wireless.dyn.drei.com.
 [178.115.52.210]) by smtp.gmail.com with ESMTPSA id
 m20-20020a05600c4f5400b0038b5162260csm16809052wmq.23.2022.04.09.01.15.34
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 09 Apr 2022 01:15:36 -0700 (PDT)
Message-ID: <72e9bd34-3380-e305-65f0-a17306f5bd08@linbit.com>
Date: Sat, 9 Apr 2022 10:15:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.2
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>
References: <20220409045043.23593-1-hch@lst.de>
 <20220409045043.23593-25-hch@lst.de>
From: =?UTF-8?Q?Christoph_B=c3=b6hmwalder?= <christoph.boehmwalder@linbit.com>
In-Reply-To: <20220409045043.23593-25-hch@lst.de>
X-Spam-Score: -2.8 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 09.04.22 06:50,
 Christoph Hellwig wrote: > Just use a non-zero
 max_discard_sectors as an indicator for discard > support, similar to what
 is done for write zeroes. > > The only places where needs s [...] 
 Content analysis details:   (-2.8 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.47 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.8 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nd75j-0000xb-J1
X-Mailman-Approved-At: Sat, 09 Apr 2022 17:59:49 +0000
Subject: Re: [Jfs-discussion] [PATCH 24/27] block: remove QUEUE_FLAG_DISCARD
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
Cc: jfs-discussion@lists.sourceforge.net, linux-nvme@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, cluster-devel@redhat.com,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 linux-um@lists.infradead.org, nbd@other.debian.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 ceph-devel@vger.kernel.org, Coly Li <colyli@suse.de>,
 Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 "Martin K . Petersen" <martin.petersen@oracle.com>, linux-mmc@vger.kernel.org,
 linux-f2fs-devel@lists.sourceforge.net, linux-xfs@vger.kernel.org,
 ocfs2-devel@oss.oracle.com, linux-fsdevel@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-btrfs@vger.kernel.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gMDkuMDQuMjIgMDY6NTAsIENocmlzdG9waCBIZWxsd2lnIHdyb3RlOgo+IEp1c3QgdXNlIGEg
bm9uLXplcm8gbWF4X2Rpc2NhcmRfc2VjdG9ycyBhcyBhbiBpbmRpY2F0b3IgZm9yIGRpc2NhcmQK
PiBzdXBwb3J0LCBzaW1pbGFyIHRvIHdoYXQgaXMgZG9uZSBmb3Igd3JpdGUgemVyb2VzLgo+IAo+
IFRoZSBvbmx5IHBsYWNlcyB3aGVyZSBuZWVkcyBzcGVjaWFsIGF0dGVudGlvbiBpcyB0aGUgUkFJ
RDUgZHJpdmVyLAo+IHdoaWNoIG11c3QgY2xlYXIgZGlzY2FyZCBzdXBwb3J0IGZvciBzZWN1cml0
eSByZWFzb25zIGJ5IGRlZmF1bHQsCj4gZXZlbiBpZiB0aGUgZGVmYXVsdCBzdGFja2luZyBydWxl
cyB3b3VsZCBhbGxvdyBmb3IgaXQuCj4gCj4gU2lnbmVkLW9mZi1ieTogQ2hyaXN0b3BoIEhlbGx3
aWcgPGhjaEBsc3QuZGU+Cj4gUmV2aWV3ZWQtYnk6IE1hcnRpbiBLLiBQZXRlcnNlbiA8bWFydGlu
LnBldGVyc2VuQG9yYWNsZS5jb20+Cj4gQWNrZWQtYnk6IENocmlzdG9waCBCw7ZobXdhbGRlciA8
Y2hyaXN0b3BoLmJvZWhtd2FsZGVyQGxpbmJpdC5jb20+IFtidHJmc10KCkkgdGhpbmsgeW91IG1h
eSBoYXZlIGEgdHlwbyB0aGVyZTogbXkgQUNLIHdhcyBmb3IgZHJiZCwgbm90IGJ0cmZzLgoKPiBB
Y2tlZC1ieTogQ29seSBMaSA8Y29seWxpQHN1c2UuZGU+IFtiY2FjaGVdCj4gLS0tCj4gICBhcmNo
L3VtL2RyaXZlcnMvdWJkX2tlcm4uYyAgICAgICAgICB8ICAyIC0tCj4gICBibG9jay9ibGstY29y
ZS5jICAgICAgICAgICAgICAgICAgICB8ICAyICstCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
