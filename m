Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5937C537B
	for <lists+jfs-discussion@lfdr.de>; Wed, 11 Oct 2023 14:19:34 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1qqYBD-0005ed-Ul;
	Wed, 11 Oct 2023 12:19:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <max.kellermann@ionos.com>) id 1qqYB8-0005eL-Jc
 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:19:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5NVfn9PXw+Xc7MOe9fBZyAc2Mg1C5gfNmbgZDWe8PI8=; b=VEw9rNChKuYNEbsWi5YzPZ6rXu
 zQaMFtTSeh++UvJlK2CsSvJRkeGzsM5aWs/bMCT75IWN0Ryl9axW3Ek1/0jAxFusjR/OzQCO8yXcA
 OtC273rQ0kq5PrSmjm9XAh3HFrDyvfsCasm9NvFu7Bcd1rSNupJgBPO1s2Ea5ebf9z3Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5NVfn9PXw+Xc7MOe9fBZyAc2Mg1C5gfNmbgZDWe8PI8=; b=WTnfeZxhknzhgNRNavyryttYOg
 c6EdM+GtIoz3vitAR3fz/fnASkxB6UGpHHsDn1AAq4LqwwCjaW6PzWL03asWJ63IDHZyNitrMyCfv
 ReWt6UOCGkG1c/vDmxFZ1n71a2XOmLVyEhYaygb7L+sYLxwN5CiewLu/OVP5ubXcwJ7U=;
Received: from mail-lj1-f180.google.com ([209.85.208.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qqYB5-0007Je-38 for jfs-discussion@lists.sourceforge.net;
 Wed, 11 Oct 2023 12:19:05 +0000
Received: by mail-lj1-f180.google.com with SMTP id
 38308e7fff4ca-2c296e6543fso84106821fa.3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 11 Oct 2023 05:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=ionos.com; s=google; t=1697026736; x=1697631536; darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=5NVfn9PXw+Xc7MOe9fBZyAc2Mg1C5gfNmbgZDWe8PI8=;
 b=Nja/vaPHdoDXi3VAyMUGd0aRZL2JIAw0bqca4Y3lrk6McuKkXlby+8VgjQGPKf53rh
 X1ExyxxaY/zVcqeuQ9l7zcP9mHmIojZba3VY6DRo7BiOJhppQ9xnb/7LEcSMPJd2ubXy
 7DRr8GQH8sjs+/nkxafY/9wzYF0uP7CmSt71CiyylsORHKHuR+0eVtYOX//umIK/NM7q
 IS+dTqDBlLW0M0B+leotaiA//++9pxU2haASOHho88iyaLjzCmUwIEh0fLaQGjfT+hrH
 eDWST2LDvoI/iXch7JyVfp/0hMAqoG+jXEYe3hEfxicQdeQymta0z8++Z577fF7ZEr7r
 W1dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697026736; x=1697631536;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=5NVfn9PXw+Xc7MOe9fBZyAc2Mg1C5gfNmbgZDWe8PI8=;
 b=vBqV9DsAzXK3PFlIvlZE96AzoMeS9feLQbI/uEylPygHcG/Mce3w0YXZbdvPSSYM8r
 mWEm/RAyi/IqKoFBTnJGUaDVdEh1jrl5w4K7qtXuCGRt+TjfG3PFetpRAr4D6ulntKFR
 XU/qTdM9lpKaPBYspUwQWbmQ0HYw4ozqvn7LUL5w+nWJTxm0Q4RgPOp2Y6745pUKwdGF
 5B8KuhCpGFVeXNbdagNpNWUscrR7JPuZRp2lZ+U1YWngkCSqJiWJh+wfXvcbv9ikiQZN
 o6o+50Z3VKj3h5N6tmle07wHjVMctEOVUolcXzEc1WoUG9K9JNP+W2S7PIQDtKkg7bEH
 ulFA==
X-Gm-Message-State: AOJu0YzQgL01g4KSlmGbVyK+XTVLbcK2xZbbw+v/IBZUQ0J/8Bix/IVK
 7SnbKFk5heC32F3ybp8/HEJorwVLPIlPb6wDDR5Rbg==
X-Google-Smtp-Source: AGHT+IEyeSqa4UE2CD7oJKjtgieZak6mpqiXIKqLTMmoHN4AgmJWnb4Frkvq70Bdg5zQYImvAjshCXozVjO2zOmw3gU=
X-Received: by 2002:a2e:93c5:0:b0:2bf:f3a0:2f9f with SMTP id
 p5-20020a2e93c5000000b002bff3a02f9fmr15021916ljh.4.1697026736637; Wed, 11 Oct
 2023 05:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <69dda7be-d7c8-401f-89f3-7a5ca5550e2f@oracle.com>
 <20231009144340.418904-1-max.kellermann@ionos.com>
 <20231010131125.3uyfkqbcetfcqsve@quack3>
 <CAKPOu+-nC2bQTZYL0XTzJL6Tx4Pi1gLfNWCjU2Qz1f_5CbJc1w@mail.gmail.com>
 <20231011100541.sfn3prgtmp7hk2oj@quack3>
 <CAKPOu+_xdFALt9sgdd5w66Ab6KTqiy8+Z0Yd3Ss4+92jh8nCwg@mail.gmail.com>
 <20231011120655.ndb7bfasptjym3wl@quack3>
In-Reply-To: <20231011120655.ndb7bfasptjym3wl@quack3>
Date: Wed, 11 Oct 2023 14:18:45 +0200
Message-ID: <CAKPOu+-hLrrpZShHh0o6uc_KMW91suEd0_V_uzp5vMf4NM-8yw@mail.gmail.com>
To: Jan Kara <jack@suse.cz>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Oct 11, 2023 at 2:07 PM Jan Kara <jack@suse.cz>
   wrote: > Indeed, *that* looks like a bug. Good spotting! I'd say posix_acl_create()
    > defined in include/linux/posix_acl.h for the !CONFIG_FS_ [...] 
 
 Content analysis details:   (-0.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
                              no trust
                             [209.85.208.180 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
                             [209.85.208.180 listed in wl.mailspike.net]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
X-Headers-End: 1qqYB5-0007Je-38
Subject: Re: [Jfs-discussion] [PATCH v2] fs/{posix_acl, ext2, jfs,
 ceph}: apply umask if ACL support is disabled
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
From: Max Kellermann via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Max Kellermann <max.kellermann@ionos.com>
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Yang Xu <xuyang2018.jy@fujitsu.com>,
 Jeff Layton <jlayton@kernel.org>, linux-kernel@vger.kernel.org,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Ilya Dryomov <idryomov@gmail.com>,
 Xiubo Li <xiubli@redhat.com>, ceph-devel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBPY3QgMTEsIDIwMjMgYXQgMjowN+KAr1BNIEphbiBLYXJhIDxqYWNrQHN1c2UuY3o+
IHdyb3RlOgo+IEluZGVlZCwgKnRoYXQqIGxvb2tzIGxpa2UgYSBidWcuIEdvb2Qgc3BvdHRpbmch
IEknZCBzYXkgcG9zaXhfYWNsX2NyZWF0ZSgpCj4gZGVmaW5lZCBpbiBpbmNsdWRlL2xpbnV4L3Bv
c2l4X2FjbC5oIGZvciB0aGUgIUNPTkZJR19GU19QT1NJWF9BQ0wgY2FzZQo+IHNob3VsZCBiZSBz
dHJpcHBpbmcgbW9kZSB1c2luZyB1bWFzay4gQ2FyZSB0byBzZW5kIGEgcGF0Y2ggZm9yIHRoaXM/
CgpZb3UgbWVhbiBsaWtlIHRoZSBwYXRjaCB5b3UncmUgY29tbWVudGluZyBvbiByaWdodCBub3c/
IDstKQoKQnV0IHdpdGhvdXQgdGhlIG90aGVyIGZpbGVzeXN0ZW1zLiBJJ2xsIHJlc2VuZCBpdCB3
aXRoIGp1c3QgdGhlCnBvc2l4X2FjbC5oIGh1bmsuCgoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KSmZzLWRpc2N1c3Npb24gbWFpbGluZyBsaXN0Ckpmcy1k
aXNjdXNzaW9uQGxpc3RzLnNvdXJjZWZvcmdlLm5ldApodHRwczovL2xpc3RzLnNvdXJjZWZvcmdl
Lm5ldC9saXN0cy9saXN0aW5mby9qZnMtZGlzY3Vzc2lvbgo=
