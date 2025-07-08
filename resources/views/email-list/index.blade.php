<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Email List') }}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">

                    <form method="GET" action="{{ route('email-list.create') }}" class="flex justify-end mb-4">
                        <button type="submit"
                            class="px-4 py-2 bg-black text-white rounded hover:bg-gray-900 transition shadow-md !bg-black !text-white">
                            {{ __('Create new email list') }}
                        </button>
                    </form>

                    <!-- Listagem -->
                    @forelse($EmailList as $list)
                        <div class="p-4 border-b border-gray-300">
                            {{ $list->nome ?? 'Sem nome definido' }}
                        </div>
                    @empty
                        <div class="text-center text-gray-400">
                            {{ __('No email lists found.') }}
                        </div>
                    @endforelse

                </div>
            </div>
        </div>
    </div>
</x-app-layout>
